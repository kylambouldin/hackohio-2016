class UpdateCrawlTable < ActiveRecord::Migration[5.0]
  def change
  	add_column :crawls, :date, :datetime
  end
end
