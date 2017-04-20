class AddImgColumnToSubmissions < ActiveRecord::Migration[5.0]
  def change
    add_column :submissions, :image, :string, default: "default.jpg"
  end
end
