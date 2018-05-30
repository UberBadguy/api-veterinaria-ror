class CreatePetSicknesses < ActiveRecord::Migration[5.1]
  def change
    create_table :pet_sicknesses do |t|
      t.references :pets, foreign_key: true
      t.references :sickness, foreign_key: true

      t.timestamps
    end
  end
end
