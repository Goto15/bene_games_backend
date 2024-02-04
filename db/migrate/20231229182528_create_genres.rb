class CreateGenres < ActiveRecord::Migration[7.1]
  def change
    create_table :genres do |t|
      t.string :genre
      t.float :multiplier

      t.timestamps
    end
    add_index :genres, :genre, unique: true
  end
end
