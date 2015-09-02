class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :adres
      t.string :phone
      t.string :info
      t.references :customer, index: true

      t.timestamps null: false
    end
    add_foreign_key :locations, :customers
  end
end
