require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'MjQ5MzU0MjQ4MTU5MTAwOTI5.CxT2wg.nyHUSDjSnqMLe1ij5C5uqkB3wV8', client_id: 249354248159100929, prefix: '&'

# Page user for voice channel
bot.command(:init) do |event|
# Check to see if already connected
unless event.voice
	# Logging
	puts "New voice channel connecting";

	# Register user voice channel
	channel = event.user.voice_channel;

	# Confirm user is connected to a voice channel
	next "Please join a voice channel, or rejoin the one you are currently in." unless channel

        # Bind to text channel
	event.respond "Initialized in text channel: #{event.channel.name}";
	
	# Connect to channel
	bot.voice_connect(channel)
	event.respond "Initialized in voice channel: #{channel.name}";

	# Logging
	puts "Connection Successful"
	puts "Currently Connected Channels: #{bot.voices.name}";
else

	"Already initialized"

end
end

# A simple command that plays back an mp3 file.
bot.command(:play_mp3) do |event|
  event.respond "functional";
end

bot.command(:kill) do |event|
	puts "Terminating...";
	event.respond"Terminating...";
	bot.stop();
end

bot.run
