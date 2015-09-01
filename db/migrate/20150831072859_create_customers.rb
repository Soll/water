class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :short_name
      t.string :full_name
      t.string :phone
      t.string :adres
      t.references :price_group, index: true
      t.timestamps null: false
    end
    add_foreign_key :customers, :price_groups
  end
end
