require 'budget.rb'
require "csv"

class CrawlsController < ApplicationController

	def create
			@numbers = params[:num_bars]
			if (@numbers)
				@client = GooglePlaces::Client.new('AIzaSyBrQcAP2_ux46TjrnAQZs_1ATYpzae-q0M')
				@spots = @client.spots_by_query('bars in columbus Ohio')
				@spots = @spots.first(@numbers.to_i )

				CSV.open("public/file.csv", "wb") do |csv|
					csv << ["longitude", "latitude", "place"]
					@spots.each do |spot|
						csv << [spot.lng, spot.lat, spot.name]
					end
				end
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
