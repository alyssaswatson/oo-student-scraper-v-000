require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    students = []
    doc = Nokogiri::HTML(open("./fixtures/student-site/index.html"))
    doc.css("student-card").each do |student|
    profile_url = student.css(".tags a")
    location = student.css("student-location")
    name = student.css("student-name")
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
