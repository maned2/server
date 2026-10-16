#!/bin/bash

# Путь к конфигурациям по умолчанию (можно переопределить через env)
CONFIG_DIR="${ECO_CONFIG_DIR:-/var/server/games/eco/docker_official/mount/Configs}"
cd "$CONFIG_DIR" || { echo "Критическая ошибка: Директория конфигураций не найдена!"; exit 1; }

# --- Шаг 1: Проверка наличия утилиты jq ---
if ! command -v jq &> /dev/null; then
    echo "Ошибка: Утилита 'jq' не установлена в системе!"
    echo "Для исправления запустите: apt-get update && apt-get install -y jq"
    exit 1
fi

# Универсальная функция для проверки и создания файла из шаблона
prepare_config_file() {
    local file="$1"
    if [ ! -f "$file" ]; then
        echo "Файл $file отсутствует."
        if [ -f "$file.template" ]; then
            echo "Обнаружен шаблон. Копируем $file.template в $file..."
            cp "$file.template" "$file"
            return 0
        else
            echo "Критическая ошибка: Шаблон $file.template не найден. Пропускаем файл."
            return 1
        fi
    else
        echo "Файл $file обнаружен. Переходим к модификации..."
        return 0
    fi
}

# Вспомогательная функция для безопасной перезаписи JSON файлов через jq
apply_jq_changes() {
    local file="$1"
    local jq_filter="$2"
    local temp_file
    temp_file=$(mktemp)

    # Применяем фильтр jq во временный файл
    if [ -n "$3" ]; then
        # Если передан аргумент (для многострочного текста)
        jq --arg desc "$3" "$jq_filter" "$file" > "$temp_file"
    else
        jq "$jq_filter" "$file" > "$temp_file"
    fi

    # Проверяем успешность операции и заменяем оригинал
    if [ $? -eq 0 ] && [ -s "$temp_file" ]; then
        mv "$temp_file" "$file"
        echo "Файл $file успешно обновлен!"
    else
        echo "Ошибка: Не удалось применить изменения к файлу $file. Изменения отменены."
        rm -f "$temp_file"
    fi
}


# ==============================================================================
# НАЧАЛО ОБРАБОТКИ ФАЙЛОВ
# ==============================================================================

# --- Часть 1: Модификация файла Difficulty.eco ---
FILE_DIFF="Difficulty.eco"
echo -e "\n=== Обработка файла: $FILE_DIFF ==="

if prepare_config_file "$FILE_DIFF"; then
    DIFF_FILTER='
      .GameSettings.HoursPlayedPerDay = 5.0 |
      .GameSettings.CollaborationLevel = "LowCollaboration" |
      .GameSettings.AdvancedGameSettings.MeteorImpactInDays = 60.0 |
      .GameSettings.AdvancedGameSettings.MaxProfessionsPerCitizen = 20.0 |
      .GameSettings.AdvancedGameSettings.MaxSpecialtiesPerCitizen = 50.0 |
      .GameSettings.AdvancedGameSettings.SkillCostMultiplier = 0.5 |
      .GameSettings.AdvancedGameSettings.CraftResourceMultiplier = 0.5 |
      .GameSettings.AdvancedGameSettings.CraftTimeMultiplier = 0.5 |
      .GameSettings.AdvancedGameSettings.ClaimStakesGrantedUponSkillscrollConsumed = 0.2 |
      .GameSettings.AdvancedGameSettings.ClaimPapersGrantedUponSkillscrollConsumed = 2.0 |
      .GameSettings.AdvancedGameSettings.SpecialtyRefundPercentage = 0.8 |
      .GameSettings.AdvancedGameSettings.StackSizeMultiplier = 4.0 |
      .GameSettings.AdvancedGameSettings.WeightMultiplier = 0.5 |
      .GameSettings.AdvancedGameSettings.FuelEfficiencyMultiplier = 2.0 |
      .GameSettings.AdvancedGameSettings.GrowthRateMultiplier = 2.0 |
      .GameSettings.AdvancedGameSettings.ConnectionRangeMultiplier = 4.0 |
      .GameSettings.AdvancedGameSettings.ShelfLifeMultiplier = 2.0 |
      .GameSettings.AdvancedGameSettings.AllowDeepOceanBuilding = true |
      .GameSettings.AdvancedGameSettings.AnimalUnprovokedAttackFrequencyMultiplier = 0.0
    '
    apply_jq_changes "$FILE_DIFF" "$DIFF_FILTER"
fi


# --- Часть 2: Модификация файла Exhaustion.eco ---
FILE_EXH="Exhaustion.eco"
echo -e "\n=== Обработка файла: $FILE_EXH ==="

if prepare_config_file "$FILE_EXH"; then
    EXH_FILTER='
      .MondayExhaustionRefreshHours = 5.0 |
      .TuesdayExhaustionRefreshHours = 5.0 |
      .WednesdayExhaustionRefreshHours = 5.0 |
      .ThursdayExhaustionRefreshHours = 5.0 |
      .FridayExhaustionRefreshHours = 7.0 |
      .SaturdayExhaustionRefreshHours = 7.0 |
      .SundayExhaustionRefreshHours = 7.0 |
      .MaxSavedHours = 16.0
    '
    apply_jq_changes "$FILE_EXH" "$EXH_FILTER"
fi


# --- Часть 3: Модификация файла Localization.eco ---
FILE_LOC="Localization.eco"
echo -e "\n=== Обработка файла: $FILE_LOC ==="

if prepare_config_file "$FILE_LOC"; then
    LOC_FILTER='
      .Language = "Russian"
    '
    apply_jq_changes "$FILE_LOC" "$LOC_FILTER"
fi


# --- Часть 4: Модификация файла Network.eco ---
FILE_NET="Network.eco"
echo -e "\n=== Обработка файла: $FILE_NET ==="

if prepare_config_file "$FILE_NET"; then
    # Динамические сетевые переменные из env (с безопасными дефолтами)
    SERVER_IP="${ECO_SERVER_IP:-127.0.0.1}"
    DISCORD_URL="${ECO_DISCORD_URL:-https://discord.com}"
    RULES_URL="${ECO_RULES_URL:-https://yonote.ru}"
    SERVER_NAME="${ECO_SERVER_NAME:-4fun4 | Beginner | RU | EN | Siberian | NoMods | Meteor 60 days | 1 km2}"

    # Собираем многострочный текст описания, внедряя переменные ссылок
    SERVER_DESC="Сервер просто для веселья. Заходите, играйте, наслаждайтесь игрой. Просим только не строиться слишком близко, и не воровать незаприваченные ресурсы. \nThe server is just for fun. Come, play, enjoy the game. We just ask that you do not build too close, and do not steal unprivileged resources. \nServer rules, Правила сервера: $RULES_URL"

    # Формируем фильтр с подстановкой сетевых переменных окружения
    NET_FILTER="
      .PublicServer = true |
      .Playtime = \"000000000001111222220000000000000001111222220000000000000001111222220000000000000001111222220000000000000001111222220000000222200001111222220000000222200001111222220000\" |
      .DiscordAddress = \"$DISCORD_URL\" |
      .Name = \"$SERVER_NAME\" |
      .DetailedDescription = \$desc |
      .ServerCategory = \"Beginner\" |
      .RemoteAddress = \"$SERVER_IP\" |
      .WebServerUrl = \"http://$SERVER_IP:3001\"
    "
    apply_jq_changes "$FILE_NET" "$NET_FILTER" "$SERVER_DESC"
fi


# --- Часть 5: Модификация файла Settlements.eco ---
FILE_SET="Settlements.eco"
echo -e "\n=== Обработка файла: $FILE_SET ==="

if prepare_config_file "$FILE_SET"; then
    SET_FILTER='
      .SettlementFoundationBaseInfluence = [150.0, 400.0, 800.0] |
      .MinCitizensToFoundSettlement = |
      .MinCitizensToMaintainSettlement = |
      del(.DinnerPartyConfig.MaxDinnerPartiesPerDayPerClaim) |
      del(.DinnerPartyConfig.MaxDinnerPartiesPerDayPerSettlement) |
      del(.DinnerPartyConfig.MaxDinnerPartiesPerDayPerPlayer) |
      del(.MayTaxChildSettlements)
    '
    apply_jq_changes "$FILE_SET" "$SET_FILTER"
fi


# --- Часть 6: Модификация файла Users.eco ---
FILE_USR="Users.eco"
echo -e "\n=== Обработка файла: $FILE_USR ==="

if prepare_config_file "$FILE_USR"; then
    # Извлекаем ID администратора из env, если пусто — выводим предупреждение
    ADMIN_ID="${ECO_USER_1_ID}"
    
    if [ -z "$ADMIN_ID" ]; then
        echo "Предупреждение: Переменная ECO_USER_1_ID не задана. Список администраторов останется пустынными."
        USR_FILTER='
          .SpawnLocation = { "x": 470, "y": 0, "z": 230 } |
          .UserPermission.Admins.Collection."System.String"."$values" = []
        '
    else
        USR_FILTER="
          .SpawnLocation = { \"x\": 470, \"y\": 0, \"z\": 230 } |
          .UserPermission.Admins.Collection.\"System.String\".\"\$values\" = [\"$ADMIN_ID\"]
        "
    fi
    apply_jq_changes "$FILE_USR" "$USR_FILTER"
fi


# --- Часть 7: Модификация файла WorldGenerator.eco ---
FILE_GEN="WorldGenerator.eco"
echo -e "\n=== Обработка файла: $FILE_GEN ==="

if prepare_config_file "$FILE_GEN"; then
    # Извлекаем сид из env, если пусто — генерируем случайный для уникальности карты
    MAP_SEED="${ECO_MAP_SEED:-1886474117}"

    GEN_FILTER="
      .MapSizePreset = \"Medium\" |
      .Dimensions.WorldWidth = 100 |
      .Dimensions.WorldLength = 100 |
      .HeightmapModule.Source.Config.Seed = $MAP_SEED
    "
    apply_jq_changes "$FILE_GEN" "$GEN_FILTER"
fi

echo -e "\n=== Все конфигурационные файлы обработаны! ===\n"
