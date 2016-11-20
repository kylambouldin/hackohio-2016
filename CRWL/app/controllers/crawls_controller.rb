require "csv"
require 'json'
require 'net/http'

class CrawlsController < ApplicationController

	def create

			@numbers = params[:num_bars]
			@crawlname = params[:crawl_name]
			@crawldate = params[:crawl_date]
			if (@numbers)
				@client = GooglePlaces::Client.new('AIzaSyCTLRYRo2wwmM3umd6pbRXIVugXUnx0wwI')
				@spots = @client.spots_by_query('bars in columbus Ohio')
				@spots = @spots.first(@numbers.to_i)
				
				# check if bar exists, if it doesn't create a new one
				
				@locationArray = Array.new()
				@spots.each do |spot| 
					@locationArray.push([spot.lng, spot.lat, spot.name])
				end
				
	    else
	    	@numbers = 1;
	    end
	end


	def show
	  @crawl = Crawl.find(params[:id])
	end

	def index
	end
	
	def save
		puts 'saving'
		params[:spot_ids].each do |spot|
			puts spot
		end
		
		@crawl = Crawl.create([{ name: params[:crawl_name], user_id: current_user.id, date: params[:crawl_date] }])
		flash[:success] = "New crawl created"
		redirect_to @crawl 
	end
end
