require 'budget.rb'

class CrawlsController < ApplicationController

	def create
			@numbers = params[:num_bars]
			if (@numbers)
				@client = GooglePlaces::Client.new('AIzaSyCTLRYRo2wwmM3umd6pbRXIVugXUnx0wwI')
				@spots = @client.spots_by_query('bars in columbus Ohio')
				@spots = @spots.first(@numbers.to_i )
	    else
	    	@numbers = 1;
	    end
	end

	def mapdata
	end

	def show
	end

	def new
		@crawl = Crawl.new
	end

	def index
	end
end
