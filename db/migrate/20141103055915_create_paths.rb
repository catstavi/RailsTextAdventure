class CreatePaths < ActiveRecord::Migration
  def change
    create_table :paths do |t|
      t.string :direction
      t.integer :destination
      t.boolean :available

      t.timestamps
    end
  end
end
