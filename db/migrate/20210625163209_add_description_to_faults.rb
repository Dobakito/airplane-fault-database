class AddDescriptionToFaults < ActiveRecord::Migration[6.1]
  def change
    add_column :faults, :description, :string
    add_column :faults, :resolved, :boolean
  end
end
