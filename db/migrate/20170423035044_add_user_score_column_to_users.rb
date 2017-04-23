class AddUserScoreColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_score, :integer, :default => 0
  end
end
