require 'nokogiri'
require 'faraday'

res = Faraday.new.get('https://agriculture.house.gov/news/documentsingle.aspx?DocumentID=2546')
doc = Nokogiri::HTML res.body

title = doc.css(".newsie-titler").text.strip
date =  DateTime.parse(doc.css(".topnewstext").text.strip[-17..-1]).strftime("%Y-%m-%d")
location =  doc.css(".topnewstext").text.strip[0..9]
article =  doc.css(".bodycopy").text.strip[13..].gsub("“", "\"").gsub("”", "\"").delete("\r")

pp result = { title: title,
              date: date,
              location: location,
              article: article }