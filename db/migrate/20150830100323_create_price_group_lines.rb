class CreatePriceGroupLines < ActiveRecord::Migration
  def change
    create_table :price_group_lines do |t|
      t.references :item, index: true
      t.references :price_group, index: true
      t.integer :amount
      t.float :price
      t.timestamps null: false
    end
    add_foreign_key :price_group_lines, :items
    add_foreign_key :price_group_lines, :price_groups
  end
end
