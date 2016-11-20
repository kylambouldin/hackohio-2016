class UpdateBarsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :bars, :address, :string
  	add_column :bars, :longitude, :float
  	add_column :bars, :latitude, :float
  end
end
