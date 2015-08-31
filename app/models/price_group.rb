class PriceGroup < ActiveRecord::Base
  has_many :price_group_lines, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true

  accepts_nested_attributes_for :price_group_lines,
                                 allow_destroy: true,
                                 reject_if: proc { |attrs| attrs["price"].blank? && attrs["amount"].blank? }
end
