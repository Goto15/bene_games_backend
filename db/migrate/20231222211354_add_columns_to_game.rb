class AddColumnsToGame < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :criticScore, :integer
    add_column :games, :description, :string
    add_column :games, :esrbRating, :string
    add_column :games, :releaseDate, :datetime
    add_column :games, :title, :string
    add_column :games, :userScore, :integer
    add_column :games, :length, :integer
    add_column :games, :completed, :boolean
    add_column :games, :blind, :boolean
    add_column :games, :votesNeededToPass, :integer
    add_column :games, :hasVotes, :integer
  end
end
