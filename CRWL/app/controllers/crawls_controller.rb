require "csv"

class CrawlsController < ApplicationController

	def create
			@numbers = params[:num_bars]
			@crawlname = params[:crawl_name]
			@crawldate = params[:crawl_date]
			if (@numbers)
				@client = GooglePlaces::Client.new('AIzaSyBrQcAP2_ux46TjrnAQZs_1ATYpzae-q0M')
				@spots = @client.spots_by_query('bars in columbus Ohio')
				@spots = @spots.first(@numbers.to_i)
				
				# check if bar exists, if it doesn't create a new one

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
	
	def save
		params[:spot_ids].each do |id|
			puts id
		end
		
		@crawl = Crawl.create([{ name: params[:crawl_name], user_id: current_user.id, crawl_date: params[:crawl_date] }])
		return @crawl
	end
end
