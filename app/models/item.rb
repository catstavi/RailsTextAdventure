class Item < ActiveRecord::Base
  belongs_to :inventory, polymorphic: true
end
