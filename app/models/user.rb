class User < ActiveRecord::Base
  has_secure_password

  has_many :maps
  has_many :players
end
