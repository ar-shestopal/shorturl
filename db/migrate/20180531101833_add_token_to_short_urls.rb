class AddTokenToShortUrls < ActiveRecord::Migration[5.2]
  def change
    add_column :short_urls, :token, :string
    add_index :short_urls, :token, unique: true
  end
end
