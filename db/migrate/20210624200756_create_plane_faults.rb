class CreatePlaneFaults < ActiveRecord::Migration[6.1]
  def change
    create_table :plane_faults do |t|
      t.string :description
      t.boolean :resolved
      t.belongs_to :plane
      t.belongs_to :fault

      t.timestamps null: false
    end
  end
end
