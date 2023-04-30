import logging, os, itertools, secrets

from telegram import Update, ForceReply, InlineKeyboardButton, InlineKeyboardMarkup
from telegram.ext import Updater, CommandHandler, MessageHandler, Filters, CallbackContext, CallbackQueryHandler
from table_games_gen import getRandomGame

TOKEN = os.getenv('TOKEN')

# Enable logging
logging.basicConfig(
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s', level=logging.INFO
)

logger = logging.getLogger(__name__)



# Define a few command handlers. These usually take the two arguments update and
# context.
def start(update: Update, context: CallbackContext) -> None:
    """Send a message when the command /start is issued."""

    keyboard = [
        [
            InlineKeyboardButton("food", callback_data='1'),
        ],
    ]
    reply_markup = InlineKeyboardMarkup(keyboard)

    # user = update.effective_user
    # update.message.reply_markdown_v2(
    #     fr'Hi {user.mention_markdown_v2()}\!, используй команду /f что бы придумать еду',
    #     reply_markup=ForceReply(selective=True),
    # )
    update.message.reply_text('Please choose:', reply_markup=reply_markup)

def game(update: Update, context: CallbackContext) -> None:
    """Send a message when the command /f is issued."""
    game = getRandomGame()
    update.message.reply_markdown_v2(
        fr'Сегодня ты играешь в *{game}*'
    )

def help_command(update: Update, context: CallbackContext) -> None:
    """Send a message when the command /help is issued."""
    update.message.reply_text('Help!')


def echo(update: Update, context: CallbackContext) -> None:
    """Echo the user message."""
    update.message.reply_text(update.message.text)

def button(update: Update, context: CallbackContext) -> None:
    """Parses the CallbackQuery and updates the message text."""
    query = update.callback_query

    # CallbackQueries need to be answered, even if no notification to the user is needed
    # Some clients may have trouble otherwise. See https://core.telegram.org/bots/api#callbackquery
    query.answer()


    query.edit_message_text(text=f"Selected option: {query.data}")
    # food(update=update, context=context)
    # start(update=update, context=context)

def main() -> None:
    """Start the bot."""
    # Create the Updater and pass it your bot's token.
    updater = Updater(TOKEN)

    # Get the dispatcher to register handlers
    dispatcher = updater.dispatcher

    # on different commands - answer in Telegram
    dispatcher.add_handler(CommandHandler("start", start))
    dispatcher.add_handler(CommandHandler("help", help_command))
    dispatcher.add_handler(CommandHandler("g", game))
    dispatcher.add_handler(CallbackQueryHandler(button))

    # on non command i.e message - echo the message on Telegram
    dispatcher.add_handler(MessageHandler(Filters.text & ~Filters.command, echo))

    # Start the Bot
    updater.start_polling()

    # Run the bot until you press Ctrl-C or the process receives SIGINT,
    # SIGTERM or SIGABRT. This should be used most of the time, since
    # start_polling() is non-blocking and will stop the bot gracefully.
    updater.idle()


if __name__ == '__main__':
    main()