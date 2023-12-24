class AddDatesToGame < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :completionDate, :datetime
    add_column :games, :startDate, :datetime
  end
end
