class CreateFaults < ActiveRecord::Migration[6.1]
  def change
    create_table :faults do |t|
      t.string :system_affected
      t.string :severity
      t.datetime :date

      t.timestamps null: false
    end
  end
end
