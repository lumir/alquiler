class AlkilersController < ApplicationController

  def index
    @alkilers = Alkiler.all
  end

  def new
    @alkiler = Alkiler.new()
  end

  def edit
    @alkiler = Alkiler.find(params[:id])
  end

  def update
    @alkiler = Alkiler.find(params[:id])
    refresh_max_values(params[:alkiler],@alkiler) if @alkiler
    if @alkiler.update_attributes(params[:alkiler])
      flash[:notice] = "Alquiler grabado"
      redirect_to alkilers_path
    else
      flash[:error] = "Error en los datos"
      render "edit"
    end
  end

  def create
    @alkiler = Alkiler.new(params[:alkiler])
    if @alkiler.save
      refresh_max_values(params[:alkiler])
      flash[:notice] = "Alquiler grabado"
      redirect_to alkilers_path
    else
      flash[:error] = "Error en los datos"
      render "new"
    end
  end

  private

  def refresh_max_values(params, alkiler = nil)
    chairs = Item.find_by_name("chairs")
    tables = Item.find_by_name("tables")
    big_tables = Item.find_by_name("big_tables")
    cloth_tables = Item.find_by_name("cloth_tables")
    special_cloth_tables = Item.find_by_name("special_cloth_tables")

    [chairs, tables, big_tables, cloth_tables, special_cloth_tables].each do |item|
      item.units = item.units - params[item.name].to_i unless alkiler
      if alkiler
        unless params[item.name].blank?
          #debugger
          dif = alkiler.send(item.name).to_i - params[item.name].to_i
          item.units = item.units + dif
        end
      end
      item.save
    end
  end

end
