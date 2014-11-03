class Room < ActiveRecord::Base
  belongs_to :map
  has_one :player
  has_many :items, as: :inventory
  has_many :paths

  validates :name, :full_desc, :short_desc, :map_id, presence: true

end
