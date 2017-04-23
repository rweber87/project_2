class RemoveUnnecesaryFbFieldsFromUsersTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :Users, :string
    remove_column :users, :provider, :string
    remove_column :users, :uid, :string
    remove_column :users, :name, :string
    remove_column :users, :oauth_token, :string
    remove_column :users, :oauth_expires_at, :datetime
  end
end
