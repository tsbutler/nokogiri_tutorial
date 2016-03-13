require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'Pry'
require 'csv'

#This is how we request the page we're going to scrape.
page = HTTParty.get('https://newyork.craigslist.org/search/pet?s=0')

Pry.start(binding)