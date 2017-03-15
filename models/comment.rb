class Comment < ActiveRecord::Base
  has_one :user
  has_one :group
  # linking to a dish
end
