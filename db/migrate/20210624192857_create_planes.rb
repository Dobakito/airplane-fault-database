class CreatePlanes < ActiveRecord::Migration[6.1]
  def change
    create_table :planes do |t|
      t.string :make
      t.string :model
      t.integer :years_old
      t.integer :flight_cycles
      t.belongs_to :mechanic
      
      t.timestamps null: false
    end
  end
end
