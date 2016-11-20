class AddBarInCrawlTable < ActiveRecord::Migration[5.0]
  def change
      create_table :bar_in_crawl do |t|
    	t.belongs_to :crawl, foreign_key: true
    	t.belongs_to :bar, foreign_key: true
      t.timestamps
      end
  end
end
