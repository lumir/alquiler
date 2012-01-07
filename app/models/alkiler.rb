class Alkiler < ActiveRecord::Base
  validates :chairs, :tables, :big_tables, :cloth_tables, :special_cloth_tables, :max_values => true
  attr_accessible :client_name, :client_document, :client_address, :client_phone, :chairs, :tables, :big_tables, :cloth_tables, :special_cloth_tables, :date_init, :date_finish, :abono, :total
  #validates :client_name, :client_document, :date_init, :date_finish, :presence => true
  validates_presence_of  :client_name, :message => "Falta el nombre del cliente"
  validates_presence_of  :date_init, :message => "Falta la fecha inicial del alquiler"
  validates_presence_of  :date_finish, :message => "Falta la fecha de entrega del alquiler"
  EN_ESPANOL = {:chairs => "Sillas", :tables => "Mesas", :cloth_tables => "Manteles Sencillos", :special_cloth_tables => "Manteles con Faldillin", :big_tables => "Mesones"}

end
