class Item < ActiveRecord::Base
  belongs_to :item_type
  has_one :price_group_line

  validates :name, :item_type_id, presence: true
  validates :name, uniqueness: { scope: [:item_type_id] }
end
