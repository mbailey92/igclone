class PagesController < ApplicationController
  skip_before_action :configure_permitted_parameters, if: :devise_controller?, only: [:home]

  def home
    redirect_to new_user_session_path unless user_signed_in?
  end
end
