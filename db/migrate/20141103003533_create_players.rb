class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :status
      t.integer :health

      t.timestamps
    end
  end
end
