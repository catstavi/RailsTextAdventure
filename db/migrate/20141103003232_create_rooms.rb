class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :short_desc
      t.text :full_desc

      t.timestamps
    end
  end
end
