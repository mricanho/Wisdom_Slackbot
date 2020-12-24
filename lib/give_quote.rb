class GiveQuote
  include Quotes
  def self.random_quote
    values = QUOTES.values
    values[rand(values.size)]
  end
end
