class AddTokenstoApiInformation < ActiveRecord::Migration[7.1]
  def change
    add_column :api_informations, :access_token, :string
    add_column :api_informations, :refresh_token, :string
  end
end
