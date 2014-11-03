class Map < ActiveRecord::Base
  has_many :rooms
  belongs_to :user
  has_one :player, through: :rooms
end
