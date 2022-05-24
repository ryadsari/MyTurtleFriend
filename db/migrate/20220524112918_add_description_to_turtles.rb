class AddDescriptionToTurtles < ActiveRecord::Migration[6.1]
  def change
    add_column :turtles, :description, :text
  end
end
