class PriceGroupLine < ActiveRecord::Base
  belongs_to :item
  belongs_to :price_group

  validates :price_group_id, uniqueness: { scope: [:item_id, :amount] }
  validates :amount, :price, presence: true
  validates :amount, numericality: { only_integer: true }
  validates :price, format: /\A\d+(.\d{0,2})?\z/i,
             numericality: { greater_than: 0 }
end
