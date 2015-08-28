class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :item_type, index: true
      t.string :name
      t.timestamps null: false
    end
    add_foreign_key :items, :item_types
  end
end
