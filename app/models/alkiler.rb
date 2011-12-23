class Alkiler < ActiveRecord::Base
   attr_accessible :client_name, :client_document, :client_address, :client_phone, :chairs, :tables, :big_tables, :table_cloths, :table_cloths_special, :date_init, :date_finish, :abono, :total
end
