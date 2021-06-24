class FaultsController < ApplicationController


  def index
    @faults = Fault.all
  end

  def show
    set_fault
  end

  def new
    @fault = Fault.new
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

  def set_fault
    @fault = Fault.find(params[:id])
  end

  def fault_params
    params.fetch(:fault, {})
  end
end
