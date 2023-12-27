class AddCustomColumnsToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :review, :string
    add_column :games, :custom_multi, :float
  end
end
