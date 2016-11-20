class AddPropertiesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :budgetSave, :text
  end
end
