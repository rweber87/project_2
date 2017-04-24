class AddRockBandColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :rockband_name, :string
  end
end
