class AddRoomId < ActiveRecord::Migration
  def change
    add_column :paths, :room_id, :integer
  end
end
