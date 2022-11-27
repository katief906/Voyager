class HomesController < ApplicationController
  before_action :authenticate_user, only: [:authenticated]

  def index
  end

  def authenticated
  end

  protected

  def authenticate_user
    if !current_user
      redirect_to new_user_session_path
      flash[:alert] = "You need to be signed in first."
    end
  end
end
