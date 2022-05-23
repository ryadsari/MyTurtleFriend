class AddReferenceToTurtles < ActiveRecord::Migration[6.1]
  def change
    add_reference :turtles, :user, index: true
  end
end
