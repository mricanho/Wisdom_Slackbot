# rubocop: disable Security/Open
require 'rss'
require 'open-uri'
require_relative 'quotes'
require_relative 'give_quote'

module WisdomBot
  module Commands
    class GetCommand < SlackRubyBot::Commands::Base
      command 'I want a video' do |client, data, _match|
        url = 'https://www.mysitemapgenerator.com/shareapi/rss/2112252381'
        rss = RSS::Parser.parse(open(url).read, false).items.sample
        client.say(channel: data.channel, text: rss.link)
      end

      command 'I want an old video' do |client, data, _match|
        url = 'https://www.mysitemapgenerator.com/shareapi/rss/2112252381'
        rss = RSS::Parser.parse(open(url).read, false).items.last
        client.say(channel: data.channel, text: rss.link)
      end

      command 'I want a new video' do |client, data, _match|
        url = 'https://www.mysitemapgenerator.com/shareapi/rss/2112252381'
        rss = RSS::Parser.parse(open(url).read, false).items.first
        client.say(channel: data.channel, text: rss.link)
      end

      command 'I want a quote' do |client, data, _match|
        client.say(channel: data.channel, text: GiveQuote.random_quote)
      end

      command 'hello' do |client, data, _match|
        client.say(channel: data.channel, text: HelloText.hello)
      end
    end
  end
end

# rubocop: enable Security/Open
