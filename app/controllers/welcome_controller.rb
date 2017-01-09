class WelcomeController < ApplicationController
  def index
    flash[:notice] = "morining"
    flash[:warning] = "warning"
    flash[:alert] = "alert"
  end
end
