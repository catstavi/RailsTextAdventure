class Map < ActiveRecord::Base
  has_many :rooms
  belongs_to :user
  has_one :player, through: :rooms

  validates :name, presence: true, uniqueness: true
  validates :desc, :user_id, presence: true

end
