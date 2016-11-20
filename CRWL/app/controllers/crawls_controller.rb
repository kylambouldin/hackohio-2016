class CrawlsController < ApplicationController

	def create
	    @client = GooglePlaces::Client.new('AIzaSyCTLRYRo2wwmM3umd6pbRXIVugXUnx0wwI')
	    @spots = @client.spots_by_query('bars in columbus Ohio')
	end
	
	def show
	end
	
	def index
	end
end
