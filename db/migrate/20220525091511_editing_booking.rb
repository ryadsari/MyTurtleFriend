class EditingBooking < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :title
    change_column :bookings, :start, :date
    change_column :bookings, :end, :date
  end
end
