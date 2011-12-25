class Alkiler < ActiveRecord::Base
   attr_accessible :client_name, :client_document, :client_address, :client_phone, :chairs, :tables, :big_tables, :cloth_tables, :special_cloth_tables, :date_init, :date_finish, :abono, :total
end
