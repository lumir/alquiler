class PagesController < ApplicationController

  layout "alan"

  def home
    Visitor.create
  end

  def encuesta
    
  end

  def somos

  end

  def descargas

  end

  def download_file    
    send_file "#{Rails.root}/public/img/diapo_1.pptx" if params[:diapositiva]        
    send_file "#{Rails.root}/public/images/song.mp3" if params[:audio]        
  end

  def region

  end

  def contactenos

  end

  def eventos
    
  end

  def send_contact
    p params.inspect
    # ContactMailer.contact_email("regionaarea3@gmail.com",params[:message])
    # ContactMailer.contact_email("aabarranquilla@yahoo.es",params[:message])
    ContactMailer.contact_email("lumir.olivares@koombea.com",params[:message]).deliver

    flash[:success] = "Se ha enviado satisfactoriamente tu correo"
    redirect_to home_path
  end

end
