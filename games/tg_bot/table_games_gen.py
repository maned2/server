import random, array, itertools, secrets

ALL_GAMES = {
    'Лото': {},
    'Крепость Маджонг': {},
    'Покер': {},
    'Башня': {},
    'Uno': {},
    'Крокодил': {},
    'Котики': {},
    'Скраббл Scrabble': {},
    'Таинственный остров': {},
    'Тримино': {},
    'Свинтус': {
        '2.0',
        'Злоключения'
    },
    'Взрывные котята. Версия для взрослых': {},
    'Мафия': {},
    'Fallout': {},
    'Fallout shelter': {},
    'Корона Эмбера': {
        'на выбор герои',
        'один из 3х героев',
        'замешайте всех! но не взбалтывайте (героев)'
    },
    'Dungeons & Dragons. Стартовый набор': {},
    'Зона': {},
    'Серп': {
        'на модульном поле фулл рандом',
        'на модульном поле один из трёх',
        'на обычном поле фулл рандом',
        'на обычном поле один из трёх',
    },
    'Корни': {},
    'Метро 2033': {},
    'Каркассон': {},
    'Властелин колец: Странствия в Средиземье': {},
    'Цивилизация Сида Мейера': {},
    'Рик и Морти': {
        'Анатомический парк',
        'Всмортить всё',
        'Близкие риконтакты риковой степени'
    },
    'Монополия': {},
    'Эволюция': {},
    'Маинкрафт': {
        'без допа',
        'с допом'
    },
    'Хора': {},
    'Место преступления': {},
    'Особняки безумия': {},
    'Манчкин': {
        'русский',
        'вампиры',
        'ктулху'
    },
    'Мемы': {
        'первые',
        '2 - ссср',
        '3 - Котики',
        'Нейромемы'
    },
    '500 злобных карт': {},
    'Codenames': {},
    'Неудержимые единорожки 18+': {},
    'Взрывные котята': {},
    'Таверна красный дракон': {
        'простая',
        'Дварф, бард и медовуха',
        'Пирушка в стиле кунг-фу'
    },
    'Экивоки зима': {},
    "Звёздные имерии": {
        'все против всех',
        'босс',
        'босс из допа'
    },
    'Цитадели': {},
}

def getRandomGame(arr = ALL_GAMES):
    # print('getRandomGame', type(arr), len(arr))
    if len(arr) == 0:
        return ''

    if type(arr) is dict:
        rand_num = secrets.randbelow(len(arr))
        # print('rand_num', rand_num)
        key = list(arr)[rand_num]
        val = list(arr.values())[rand_num]
        if type(val) is set and len(val) > 0:
            return key + ' ' + getRandomGame(val)
        else:
            return key
    elif type(arr) is set:
        rand_num = secrets.randbelow(len(list(arr)))
        # print('rand_num', rand_num)
        return list(arr)[rand_num]
    else:
        return ''

def main():
    print('result', getRandomGame())

if __name__ == '__main__':
    main()
