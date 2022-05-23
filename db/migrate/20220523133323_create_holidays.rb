class CreateHolidays < ActiveRecord::Migration[6.1]
  def change
    create_table :holidays do |t|
      t.datetime :date
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :turtle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
