class Item < ActiveRecord::Base
  belongs_to :item_type

  validates :name, :item_type_id, presence: true
  validates :name, uniqueness: { scope:[:item_type_id] }
end
