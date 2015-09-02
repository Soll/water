class Customer < ActiveRecord::Base
  belongs_to :price_group
  has_many :locations, dependent: :destroy

  validates :short_name, :full_name, :phone, presence: true

  accepts_nested_attributes_for :locations,
                                allow_destroy: true,
                                reject_if: proc { |attrs| attrs["adres"].blank? && attrs["phone"].blank? }
end
