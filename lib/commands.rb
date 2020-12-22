# rubocop: disable Security/Open
require 'rss'
require 'open-uri'
require_relative 'library'

module WisdomBot
  module Commands
    class GetVideo < SlackRubyBot::Commands::Base
      command 'get_video' do |client, data, _match|
        url = 'https://www.mysitemapgenerator.com/shareapi/rss/2112252381'
        rss = RSS::Parser.parse(open(url).read, false).items.sample
        client.say(channel: data.channel, text: rss.link)
      end

      command 'x' do |client, data, _match|
        url = 'https://www.mysitemapgenerator.com/shareapi/rss/2112252381'
        rss = RSS::Parser.parse(open(url).read, false).items.last
        client.say(channel: data.channel, text: rss.link)
      end

      command 'say_hello' do |client, data, _match|
        client.say(channel: data.channel, text: HelloText.say_hello)
      end

      command 'quote' do |client, data, _match|
        client.say(channel: data.channel, text: GiveQuote.random_quote)
      end
    end
  end
end

class GiveQuote
  include Quotes
  def self.random_quote
    values = QUOTES.values
    values[rand(values.size)]
  end
end

class HelloText
  def self.say_hello
    "Hello! This is a Miguel Ricaño's bot!"
  end
end

# rubocop: enable Security/Open
