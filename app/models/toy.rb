class Toy < ActiveRecord::Base
  has_many :toy_ownerships
  has_many :dogs, through: :toy_ownerships
end
