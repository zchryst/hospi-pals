class UserInterest < ActiveRecord::Base
  has_many :users
  has_many :interests
  # linking to a dish
end
