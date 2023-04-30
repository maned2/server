import random, array, itertools, secrets

ALL_GAMES = {
    'Лото': {},
    'Маджонг': {},
    'Башня': {},
    'Uno': {},
    'крокодил': {},
    'Котики': {},
    'Скраббл Scrabble': {},
    'Таинственный остров': {},
    'Взрывные котята. Версия для взрослых': {},
    'Мафия': {},
    'Fallout': {},
    'Корона Эмбера': {
        'на выбор герои',
        'один из 3х',
        'замешайте всех! но не взбалтывайте'
    },
    'Dungeons & Dragons. Стартовый набор': {},
    'Зона': {},
    'Серп': {
        'компания',
        'на модульном поле',
        'на обычном поле'
    },
    'Корни': {},
    'Метро 2033': {},
    'Каркассон': {},
    'Властелин колец: Странствия в Средиземье': {},
    'Цивилизация Сида Мейера': {},
    'Рик и Морти: Анатомический парк': {},
    'Рик и Морти: Всмортить всё': {},
    'Монополия': {},
    'Эволюция': {},
    'Хора': {},
    'Манчкин русский': {},
    'Мемы': {},
    '500 злобных карт': {},
    'Свинтус 2.0': {},
    'Свинтус. Злоключения': {},
    'Неудержимые единорожки 18+': {},
    'Взрывные котята': {},
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
