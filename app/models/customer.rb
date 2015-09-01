class Customer < ActiveRecord::Base
  belongs_to :price_group

  validates :short_name, :full_name, :phone, presence: true
end
