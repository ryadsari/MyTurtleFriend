class AddPictureUrlToTurtles < ActiveRecord::Migration[6.1]
  def change
    add_column :turtles, :picture_url, :string
  end
end
