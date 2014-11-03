class Room < ActiveRecord::Base
  belongs_to :map
  has_one :player
  has_many :items, as: :inventory
end
