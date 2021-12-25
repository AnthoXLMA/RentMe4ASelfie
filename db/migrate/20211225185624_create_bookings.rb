class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :starts_at
      t.string :ends_at

      t.timestamps
    end
  end
end
