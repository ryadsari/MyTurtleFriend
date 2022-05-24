class ChangePriceTypeToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :turtles, :price, :integer
  end
end
