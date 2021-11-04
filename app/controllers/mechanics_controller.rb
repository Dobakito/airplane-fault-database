class MechanicsController < ApplicationController
 skip_before_action :verified_user, only: [:new, :create]

  def show
    set_mechanic
  end

  def new
    @mechanic = Mechanic.new
  end

  def edit
    set_mechanic
  end

  def create
    @mechanic = Mechanic.new(mechanic_params)
    if @mechanic.save
      session[:user_id] = @mechanic.id
      redirect_to @mechanic
     else
       render 'new'
     end
  end

  def update
    set_mechanic
  end

  def destroy
    set_mechanic
  end

  private

    def set_mechanic
      @mechanic = Mechanic.find(params[:id])
    end

    def mechanic_params
      params.require(:mechanic).permit(
        :name,
        :email,
        :password,
        :position,
        :years_experience
      )
    end
end
