require 'open-uri'
require 'nokogiri'

class Scraper
	attr_reader :html

	def initialize(url)
		download = open(url)
		@html = Nokogiri::HTML(download)	
	end

	def get_name
		@html.css('.plainlinks a').map {|link| link["href"]}
	end

end





