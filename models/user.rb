class User < ActiveRecord::Base
  has_secure_password
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :comments
  has_one :location
end
