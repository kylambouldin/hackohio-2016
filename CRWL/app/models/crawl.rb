class Crawl < ApplicationRecord
	has_many :bar
	belongs_to :user
end
