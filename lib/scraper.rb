require 'open-uri'
require 'pry'
require 'nokogiri'

doc = Nokogiri::HTML(open("./fixtures/student-site/index.html"))
binding.pry
class Scraper

  def self.scrape_index_page(index_url)

  end


  def self.scrape_profile_page(profile_url)

  end

end
