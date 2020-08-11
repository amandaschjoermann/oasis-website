class AddOmniauthToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :image, :string
    add_column :users, :discord_name, :string
    add_column :users, :oasis_name, :string
    add_column :users, :roles, :string
    add_column :users, :mod, :boolean
    add_column :users, :oasis_member, :boolean
  end
end
