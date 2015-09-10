class ToyOwnership < ActiveRecord::Base
  belongs_to :dog
  belongs_to :toy
end
