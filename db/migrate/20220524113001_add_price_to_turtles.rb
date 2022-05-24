class AddPriceToTurtles < ActiveRecord::Migration[6.1]
  def change
    add_column :turtles, :price, :float
  end
end
