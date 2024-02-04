class CreateRewards < ActiveRecord::Migration[7.1]
  def change
    create_table :rewards do |t|
      t.string :name
      t.string :custom_reward_id

      t.timestamps
    end
  end
end
