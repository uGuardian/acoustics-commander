# This simple bot responds to every "Ping!" message with a "Pong!"

require 'discordrb'

bot = Discordrb::Bot.new token: 'MjQ5MzU0MjQ4MTU5MTAwOTI5.CxT2wg.nyHUSDjSnqMLe1ij5C5uqkB3wV8', client_id: 249354248159100929

# Here we output the invite URL to the console so the bot account can be invited to the channel. This only has to be
# done once, afterwards, you can remove this part if you want
puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

# This method call adds an event handler that will be called on any message that exactly contains the string "Ping!".
# The code inside it will be executed, and a "Pong!" response will be sent to the channel.
bot.message(content: 'Ping!') do |event|
  event.respond 'Pong!'
end

# This method call has to be put at the end of your script, it is what makes the bot actually connect to Discord. If you
# leave it out (try it!) the script will simply stop and the bot will not appear online.
bot.run
