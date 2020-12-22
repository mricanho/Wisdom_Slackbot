module Wisdom_Bot
  class Bot < SlackRubyBot::Bot
    help do
      title 'Wisdom SlackBot'
      desc "I'll bring you enlightenment, motivation, and strength whenever you want it"

      command :get_video do
        title 'get_video'
        desc 'It gives you a link to a motivational video'
        long_desc 'Every time you enter the command, it will give you the last video of the channel'
      end
    end
  end
end
