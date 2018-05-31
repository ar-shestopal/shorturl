class CreateUserInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_infos do |t|
      t.string :request_user_agent
      t.string :request_from
      t.string :request_referer
      t.string :request_ip
      t.references :short_url, foreign_key: true

      t.timestamps
    end
  end
end
