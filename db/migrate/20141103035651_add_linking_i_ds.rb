class AddLinkingIDs < ActiveRecord::Migration
  def change
    add_column :maps, :user_id, :integer
    add_column :rooms, :map_id, :integer
    add_column :players, :room_id, :integer
    add_column :players, :user_id, :integer

  end
end
