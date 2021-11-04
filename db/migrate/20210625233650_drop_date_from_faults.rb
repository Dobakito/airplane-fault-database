class DropDateFromFaults < ActiveRecord::Migration[6.1]
  def change
    remove_column :faults, :date, :datetime
  end
end
