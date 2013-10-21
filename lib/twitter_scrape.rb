require 'open-uri'
require 'nokogiri'

domain_url = "https://twitter.com/ZenQuotes3"


scrape_page = Nokogiri::HTML(open(domain_url))

def get_data(scrape_page)
    @data = scrape_page.css('p.tweet-text').text
end

def split_data
  @zen_tweets = @data.split("#quotes")
end

def call_tweet
  @zen_tweets[0]
end

get_data(scrape_page)
split_data
puts call_tweet
