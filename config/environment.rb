# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Alquiler::Application.initialize!
Date::ABBR_MONTHNAMES = [nil] + %w(Ene Feb Mar Abr May Jun Jul Ago Sep Oct Nov Dic)