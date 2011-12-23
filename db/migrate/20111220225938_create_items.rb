class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string  :name
      t.integer  :price
      t.integer  :units
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
