class ChangeColumnNamesForBooking < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookings, :start, :start_date
    rename_column :bookings, :end, :end_date
  end
end
