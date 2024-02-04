class AddTwitchColumnsToApiInformation < ActiveRecord::Migration[7.1]
  def change
    add_column :api_informations, :token_type, :string
    add_column :api_informations, :scope, :string
    add_column :api_informations, :expires_in, :integer
  end
end
