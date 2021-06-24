class PlanesController < ApplicationController

  def index
    @planes = Plane.all
  end

  def show
    set_plane
  end

  def new
    @plane = Plane.new
  end

  def create

  end

  def destroy
    set_plane
    @plane.destroy
  end

  private

    def set_plane
      @plane = plane.find(params[:id])
    end

    def plane_params
      params.require(:plane).permit(
        :make
        :model
        :years_old
        :flight_cycles
        :mechanic_id
      )
    end
end
