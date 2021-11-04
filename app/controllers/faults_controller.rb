class FaultsController < ApplicationController

  def index
    if params[:plane_id]
      @plane = Plane.find(params[:plane_id])
      @faults = Plane.find(params[:plane_id]).faults
    else
      @faults = Fault.all
    end
  end

  def show
    set_fault
  end

  def new
    @fault = Fault.new
  end

  def edit
    set_fault
  end

  def create
    fault = Fault.create(fault_params)
    redirect_to fault_path(fault)
  end

  def update
    set_fault
    @fault.update(fault_params)
    redirect_to fault_path(@fault)
  end


  private

  def set_fault
    @fault = Fault.find(params[:id])
  end

  def fault_params
    params.require(:fault).permit(
      :system_affected,
      :severity,
      :date,
      :description,
      :resolved
    )
  end
end
