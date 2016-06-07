class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :title
      t.text :description
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.references :user, index: true, foreign_key: true
      t.integer :entertainer_id
      t.string :status
      t.string :address_street
      t.string :address_city
      t.string :address_zip
      t.string :address_num

      t.timestamps null: false
    end
  end
end
