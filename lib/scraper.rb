require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    students = []
    doc = Nokogiri::HTML(open(index_url))
    doc.css(".student-card").each do |student|
    profile_url = student.css("a").attribute("href").value
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
    individual_student = []
    doc = Nokogiri::HTML(open("./fixtures/student-site/index.html"))
    doc.css(".student-card").each do |student|
    profile_url = student.css("a").attribute("href").value
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

end
