class CreateMechanics < ActiveRecord::Migration[6.1]
  def change
    create_table :mechanics do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :position
      t.integer :years_experience

      t.timestamps
    end
  end
end
