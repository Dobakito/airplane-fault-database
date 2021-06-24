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

  def edit
    
  end

  def create

  end

  def update

  end

  def destroy

  end

  private

    def set_plane
      @plane = plane.find(params[:id])
    end

    def plane_params
      params.fetch(:plane, {})
    end
end
