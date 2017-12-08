require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)

  end


  def self.scrape_profile_page(profile_url)

  end

end


doc = Nokogiri::HTML(open(index_url))
doc.css("student-card").each do |student|
url = student.css('.tags a')
end
binding.pry
