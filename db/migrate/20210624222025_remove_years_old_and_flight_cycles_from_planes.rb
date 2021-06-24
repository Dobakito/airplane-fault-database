class RemoveYearsOldAndFlightCyclesFromPlanes < ActiveRecord::Migration[6.1]
  def change
    remove_column :planes, :years_old, :integer
    remove_column :planes, :flight_cycles, :integer
  end
end
