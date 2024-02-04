class AddNameToApiInformation < ActiveRecord::Migration[7.1]
  def change
    add_column :api_informations, :token_name, :string
  end
end
