class PlanesController < ApplicationController

  def index
    @planes = Plane.all
  end

  def show
    set_plane
    @fault = @plane.faults.build(mechanic_id: current_user.id)
  end

  def new
    @plane = Plane.new
  end

  def create
    plane = Plane.create(plane_params)
    redirect_to plane_path(plane)
  end

  def edit

  end

  private

    def set_plane
      @plane = plane.find(params[:id])
    end

    def plane_params
      params.require(:plane).permit(
        :make,
        :model,
        :years_old,
        :flight_cycles,
        :plane_id
      )
    end
end
