class Property < ActiveRecord::Base
  validates_presence_of :address
  validates_length_of :address, minimum: 5

  validates_presence_of :city

  validates_presence_of :state
  validates_length_of :state, minimum: 2, maximum: 2

  validates_presence_of :zip
end
