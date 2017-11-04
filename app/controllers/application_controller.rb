class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    pokemons_path #your path
  end

  def after_sign_up_path_for(resource)
    pokemons_path #your path
  end


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: exception.message
  end
end
