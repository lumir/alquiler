class ContactMailer < ActionMailer::Base
  default :from => "alan@example.com"

  def contact_email(email,message)
     mail(:to => email, :subject => "Mensaje de Contacto de la pagina web", :body => message)
   end

end
