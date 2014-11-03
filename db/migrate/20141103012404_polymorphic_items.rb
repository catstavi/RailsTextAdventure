class PolymorphicItems < ActiveRecord::Migration
  def change
      add_column :items, :inventory_id, :integer
      add_column :items, :inventory_type, :string
  end
end
