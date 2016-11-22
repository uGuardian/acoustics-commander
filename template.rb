require 'discordrb'

bot = Discordrb::Bot.new token: 'MjQ5MzU0MjQ4MTU5MTAwOTI5.CxT2wg.nyHUSDjSnqMLe1ij5C5uqkB3wV8', client_id: 249354248159100929

# This method call has to be put at the end of your script, it is what makes the bot actually connect to Discord. If you
# leave it out (try it!) the script will simply stop and the bot will not appear online.
bot.run
