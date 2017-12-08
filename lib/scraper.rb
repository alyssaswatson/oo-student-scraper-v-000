require 'open-uri'
require 'pry'
require 'nokogiri'

doc = Nokogiri::HTML(open(index_url))
class Scraper

  def self.scrape_index_page(index_url)

  end
  binding.pry

  def self.scrape_profile_page(profile_url)

  end

end
