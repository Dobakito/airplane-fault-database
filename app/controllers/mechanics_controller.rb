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
  end

  def create

  end

  def update

  end

  def destroy

  end

  private

    def set_mechanic
      @mechanic = Mechanic.find(params[:id])
    end

    def mechanic_params
      params.fetch(:mechanic, {})
    end
end
