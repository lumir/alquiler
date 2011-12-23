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
      flash[:notice] = "Alquiler grabado"
      redirect_to alkilers_path
    else
      flash[:error] = "Error en los datos"
      render "new"
    end
  end

end
