require './lib/commands'
require_relative 'spec_helper'
require 'slack-ruby-bot'
module WisdomBot
  module Commands
    describe GetCommand < SlackRubyBot::Commands::Base do
      it 'returns a random video from the RSS list' do
        expect(message: "#{SlackRubyBot.config.user} I want a video").to respond_with_slack_message
      end
      it 'returns the last video of the RSS list' do
        expect(message: "#{SlackRubyBot.config.user} I want an old video").to respond_with_slack_message
      end
      it 'returns the newest video of the RSS list' do
        expect(message: "#{SlackRubyBot.config.user} I want a new video").to respond_with_slack_message
      end
      it 'returns a quote' do
        expect(message: "#{SlackRubyBot.config.user} I want a quote").to respond_with_slack_message
      end
      it 'says hello' do
        expect(message: "#{SlackRubyBot.config.user} say_hello").to respond_with_slack_message
      end
    end
  end
end