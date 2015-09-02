class Person < ActiveRecord::Base
  validates :name, :position, presence: true
end
