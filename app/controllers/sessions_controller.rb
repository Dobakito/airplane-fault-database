class SessionsController < ApplicationController
  skip_before_action :verified_user, only: [:new, :create]

  def home
  end

  def new
    @mechanic = Mechanic.new
  end

  def create
    mechanic = Mechanic.find_by(name: params[:mechanic][:name])
    if mechanic && mechanic.authenticate(params[:mechanic][:password])
      session[:user_id] = mechanic.id
      redirect_to mechanic_path(mechanic)
    else
      flash[:message] = "Invalid Login Info"
      redirect_to '/login'
    end
  end

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end
end
