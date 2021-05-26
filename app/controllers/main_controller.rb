class MainController < ApplicationController
  def index
    flash.now[:notice] = "Login successful"
    flash.now[:alert] = "Login alert"
  end
end
