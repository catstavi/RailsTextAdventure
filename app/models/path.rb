class Path < ActiveRecord::Base
  belongs_to :room

  validates :direction, :destination, :room_id, presence: true

end
