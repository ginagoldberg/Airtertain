class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.boolean :entertainer
      t.boolean :available
      t.string :entertainer_name
      t.text :biography
      t.string :price
      t.integer :travel_range

      t.timestamps null: false
    end
  end
end
