require './lib/commands'
describe SlackRubyBot::Commands do
  it 'I want a video' do
    expect(message: "#{SlackRubyBot.config.user} strings").to respond_with_slack_message
  end

  it 'returns the last video of the RSS list' do
    expect(message: "#{SlackRubyBot.config.user} arrays").to respond_with_slack_message
  end

  it 'returns the newest video of the RSS list' do
    expect(message: "#{SlackRubyBot.config.user} blocks_and_iterators").to respond_with_slack_message
  end

  it 'returns a quote' do
    expect(message: "#{SlackRubyBot.config.user} classes").to respond_with_slack_message
  end

  it 'says hello' do
    expect(message: "#{SlackRubyBot.config.user} say_hello").to respond_with_slack_message
  end
end

