class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :submission_id
      t.integer :upvote

      t.timestamps
    end
  end
end
