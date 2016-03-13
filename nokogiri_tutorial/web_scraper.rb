require 'HTTParty'
require 'Nokogiri'
require 'JSON'
require 'Pry'
require 'csv'

#This is how we request the page we're going to scrape.
page = HTTParty.get('https://newyork.craigslist.org/search/pet?s=0')

#This is where we transform our http response into a nokogiri object
parse_page = Nokogiri::HTML(page)

#This is an empty array where we will store all the craigslist pets
pets_array = []

parse_page.css('.content').css('.row').css('.hdrlnk')

Pry.start(binding)