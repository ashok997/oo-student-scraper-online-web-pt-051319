require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    student_index_array = []
    page = Nokogiri::HTML(open(index_url))
    page.css("div.student-card").each do |student|
      student_hash = {} ##{:name, :location, :profile_url}
      student_hash[:name] = student.css("h4.student-name").text
      student_hash[:location] =student.css("p.student-location").text
      student_hash[:profile_url]= student.css("a").attribute("href").value
      
      student_index_array << student_hash
      
    end
    student_index_array
  end

  def self.scrape_profile_page(profile_url)
    page = Nokogiri::HTML(open(profile_url))
    profile_hash ={}
    
    
    
    
  end
    

end

