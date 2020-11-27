require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(html)html = open("https://flatironschool.com/")
doc.css(".site-header__hero__headline") 
doc.css(".tout__label.heading.heading--level-4") 

courses = doc.css(".tout__label.heading.heading--level-4")

courses.each do |course|
  puts course.text.strip
end 