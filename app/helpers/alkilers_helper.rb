module AlkilersHelper

  def get_max_value(item)
    Item.find_by_name(item).units
  end

end
