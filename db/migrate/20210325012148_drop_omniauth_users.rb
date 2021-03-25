class DropOmniauthUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :omniauth_users
  end
end
