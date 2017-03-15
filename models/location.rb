class Location < ActiveRecord::Base
  has_many :users
  # linking to a dish
end
