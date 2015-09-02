class Location < ActiveRecord::Base
  belongs_to :customer

  validates :adres, :phone, :customer_id, presence: true
end
