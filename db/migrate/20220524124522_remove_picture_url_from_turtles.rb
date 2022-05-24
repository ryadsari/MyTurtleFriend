class RemovePictureUrlFromTurtles < ActiveRecord::Migration[6.1]
  def change
    remove_column :turtles, :picture_url
  end
end
