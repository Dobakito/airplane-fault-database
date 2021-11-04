class RemoveDescriptionAndResolvedFromPlaneFaults < ActiveRecord::Migration[6.1]
  def change
    remove_column :plane_faults, :description, :string
    remove_column :plane_faults, :resolved, :boolean
  end
end
