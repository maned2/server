import random, array
import itertools

def getAllFood(food, all, level = 0):
    if type(food) is str:
        print('isstr')
        return all + [food]

    if type(food) in (tuple, list):
        if level == 0:
            print('level0')
            res = all
            for arr in food:
                res = getAllFood(arr, res, level + 1)

            return res
            # return getAllFood(food[random.randint(0, len(food) - 1)], level + 1)

        if type(food[0]) is str:
            return all + food
        else:
            result = mixArrays(food)

            return all + result

    return 'ERROR ОШИБКА'

def mixArrays(arr):
    result_first = []

    for element in itertools.product(*arr):
        result_first.append(' '.join(element))

    return result_first

def getRawFood():
    return [
        [
            [
                'пельмени',
                'вареники',
                'домашние бургеры',
                'домашнюю пиццу',
                'пасту',
                'яичница',
                'омлет',
                'сендвичи',
                'еду на заказ',
            ],
            [
                '',
                'и салат'
            ]
        ],
        [
            [
                'котлеты',
                'наггетсы',
                'сосиски',
                'рыбу',
                'варёную курицу',
                'жареную курицу',
                'тушёную курицу',
                'курицу в духовке',
            ],
            [
                'с макарошками',
                'с пюрешкой',
                'с рисом',
                'с гречкой',
                'с варёной картошечкой',
                'с жареной картошечкой'
            ],
            [
                '',
                'и салат'
            ]
        ],
        [
            [
                'суп'
            ],
            [
                'сырный',
                'куриный',
                'грибной',
                'борщ'
            ],
            [
                '',
                'и салат'
            ]
        ],
    ]

def getRandomFood():
    food = getRawFood()

    all_variants = getAllFood(food, [])
    # print('result len =', len(result))
    # return result

    # all_variants = randFood(food)
    # print(all_variants)
    return all_variants[random.randint(0, len(all_variants) -1)]

def main():
    print(getRawFood())

if __name__ == '__main__':
    main()
