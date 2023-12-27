class RenameColumnsToSnakeCase < ActiveRecord::Migration[7.1]
  def up
    rename_column :games, :criticScore, :critic_score
    rename_column :games, :esrbRating, :esrb_rating
    rename_column :games, :releaseDate, :release_date
    rename_column :games, :userScore, :user_score
    rename_column :games, :votesNeededToPass, :votes_to_pass
    rename_column :games, :hasVotes, :has_votes
    rename_column :games, :completionDate, :completion_date
    rename_column :games, :startDate, :start_date
  end

  def down
    rename_column :games, :critic_score, :criticScore
    rename_column :games, :esrb_rating, :esrbRating
    rename_column :games, :release_date, :releaseDate
    rename_column :games, :user_score, :userScore
    rename_column :games, :votes_to_pass, :votesNeededToPass
    rename_column :games, :has_votes, :hasVotes
    rename_column :games, :completion_date, :completionDate
    rename_column :games, :start_date, :startDate
  end
end
