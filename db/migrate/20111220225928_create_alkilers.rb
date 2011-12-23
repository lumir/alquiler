class CreateAlkilers < ActiveRecord::Migration
  def self.up
    create_table :alkilers do |t|
      t.string  :client_name
      t.string  :client_document
      t.string  :client_address
      t.string  :client_phone
      t.integer  :chairs
      t.integer  :tables
      t.integer  :table_cloths
      t.integer  :table_cloths_special
      t.integer  :big_tables
      t.date  :date_init
      t.date  :date_finish
      t.integer  :abono
      t.integer  :total
      t.timestamps
    end
  end

  def self.down
    drop_table :alkilers
  end
end
