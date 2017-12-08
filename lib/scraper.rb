require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    students = []
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    doc.css(".student-card").each do |student|
    profile_url = student.css(".tags a")
    location = student.css(".student-location").text
    name = student.css(".student-name").text
    students.push(
        name: name,
        location: location,
        profile_url: profile_url,
      )
    end
    students
  end


  def self.scrape_profile_page(profile_url)

  end

end
