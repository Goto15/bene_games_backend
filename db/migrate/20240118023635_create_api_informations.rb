class CreateApiInformations < ActiveRecord::Migration[7.1]
  def change
    create_table :api_informations do |t|

      t.timestamps
    end
  end
end
