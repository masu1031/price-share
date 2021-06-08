class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :move_to_index, except: [:index, :new]

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index, controller: :prices
    end
  end
end
