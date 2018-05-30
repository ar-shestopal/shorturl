class AddIndexTokenToShortUrl < ActiveRecord::Migration[5.2]
  def change
    add_index :short_urls, :token, uniq: true
  end
end
