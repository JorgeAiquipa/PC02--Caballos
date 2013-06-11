class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :oauth_token
      t.datetime :oauth_exprires_at
      t.string :oauth_secret
      t.string :username

      t.timestamps
    end
  end
end
