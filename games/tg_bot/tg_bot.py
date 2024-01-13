import logging, os
from telegram import Update
from telegram.ext import ApplicationBuilder, ContextTypes, CommandHandler

from food_gen import getRandomFood, getRawFood
from table_games_gen import getRandomGame

TOKEN = os.getenv('TOKEN')

logging.basicConfig(
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    level=logging.INFO
)


async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await context.bot.send_message(chat_id=update.effective_chat.id, text="I'm a bot, please talk to me!")


async def help(update: Update, context: ContextTypes.DEFAULT_TYPE):
    helpText = """/start \\- start
    /help \\- this message
    /food /f \\- Случайная еда
    /rf \\- Список всей еды
    /g /game \\- Случайная игра"""
    await update.message.reply_markdown_v2(
        helpText
    )

async def food(update: Update, context: ContextTypes.DEFAULT_TYPE):
    randFood = getRandomFood()
    await update.message.reply_markdown_v2(
        fr'Сегодня ты ешь *{randFood}*'
    )
    # await context.bot.send_message(chat_id=update.effective_chat.id, text=fr'Сегодня ты ешь *{randFood}*')

async def rawFood(update: Update, context: ContextTypes.DEFAULT_TYPE):
    rawFood = getRawFood()
    await update.message.reply_markdown_v2(
        fr'{rawFood}'
    )

async def game(update: Update, context: ContextTypes.DEFAULT_TYPE):
    randGame = getRandomGame()
    await update.message.reply_markdown_v2(
        fr'{randGame}'
    )

if __name__ == '__main__':
    application = ApplicationBuilder().token(TOKEN).build()

    start_handler = CommandHandler('start', start)
    help_handler = CommandHandler('help', help)
    f_handler = CommandHandler(['f', 'food'], food)
    rf_handler = CommandHandler('rf', rawFood)
    g_handler = CommandHandler(['g', 'game'], game)
    application.add_handler(start_handler)
    application.add_handler(help_handler)
    application.add_handler(f_handler)
    application.add_handler(rf_handler)
    application.add_handler(g_handler)

    application.run_polling()