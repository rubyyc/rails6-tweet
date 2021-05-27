class RegistrationsController < ApplicationController
  def new
    @user = User.new
    puts "----"
    puts @user
    puts "----"
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Successfully created user account"
    else
      flash.now[:alert] = "Something went wrong"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end