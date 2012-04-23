class PagesController < ApplicationController

  layout "alan"

  def home

  end

  def encuesta
  end

  def somos
  end

  def region
  end

  def contactenos
  end

  def send_contact
    # ContactMailer.contact_email("regionaarea3@gmail.com",params[:message])
    # ContactMailer.contact_email("aabarranquilla@yahoo.es",params[:message])
    ContactMailer.contact_email("lumir.olivares@koombea.com",params[:message])
    flash[:success] = "Se ha enviado satisfactoriamente tu correo"
    redirect_to "/home"
  end

end
