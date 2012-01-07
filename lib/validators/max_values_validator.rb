class MaxValuesValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    max_value = Item.find_by_name(attribute).units
    #debugger
    if !value.blank? and (value > max_value)
      record.errors[attribute] << "No hay suficientes #{Alkiler::EN_ESPANOL[attribute]}"
    end
  end
end