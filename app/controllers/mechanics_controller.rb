class MechanicsController < ApplicationController


  def index
    @mechanics = Mechanic.all
  end

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
    if (mechanic = Mechanic.create(mechanic_params))
       session[:user_id] = mechanic.id
       redirect_to mechanic_path(mechanic)
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
        :name
        :email
        :password_digest
        :position
        :years_experience
      )
    end
end
