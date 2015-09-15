class Dog < ActiveRecord::Base
  has_many :toy_ownerships
  has_many :toys, through: :toy_ownerships
end
