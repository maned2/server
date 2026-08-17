#!/bin/bash

cd /var/server/games/eco/docker_official/mount/Configs

function update_param() {
    if grep -q "$2" "$1"; then
        echo "Текст $2 найден!"
        sed -i -- 's/"$2/$3/g' $1
    else
        echo "Текст $2 НЕ найден!"
    fi
}

function config_file_exist() {
    if [ -f "$1" ]; then
        echo "Файл $1 существует"
        return 1
        update_difficulty $1
    else
        echo "Файл $1 не найден"
        if [ -f "$1.template" ]; then
            echo "Файл $1.template существует, копируем из шаблона"
            cp "$1.template" "$1"
            return 1
            update_difficulty $1
        else
            echo "Файл $1.template не найден"
        fi
    fi

    return 0
}

function update_difficulty() {
    echo "Обновляем $1"
    update_param $1 "\"HoursPlayedPerDay\": 3.0" "\"HoursPlayedPerDay\": 5.0" 
}

file="Difficulty.eco"
if config_file_exist "$file" then
    update_difficulty "$file"
else
    echo "НЕВОЗМОЖНО ОБНОВИТЬ ФАЙЛ $file"
fi