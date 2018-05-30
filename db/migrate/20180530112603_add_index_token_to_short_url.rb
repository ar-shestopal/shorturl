class AddIndexTokenToShortUrl < ActiveRecord::Migration[5.2]
  def change
    add_index :short_urls, :token, unique: true
  end
end
