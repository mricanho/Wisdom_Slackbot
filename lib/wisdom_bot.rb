module WisdomBot
  class Bot < SlackRubyBot::Bot
    help do
      title 'Wisdom SlackBot'
      desc "I'll bring you enlightenment, motivation, and strength whenever you want it"

      command :get_video do
        title 'I want a video'
        desc 'It gives you a link to a motivational video'
      end

      command :old_video do
        title 'I want an old video'
        desc 'It gives you a link to an old motivational video'
      end

      command :new_video do
        title 'I want a new video'
        desc 'It gives you a link to the newest motivational video of the channel'
      end

      command :quote do
        title 'I want a quote'
        desc 'It gives you a short but deep thought'
      end

      command :quote do
        title 'hello'
        desc 'It gives you the first instruction'
      end
    end
  end
end
