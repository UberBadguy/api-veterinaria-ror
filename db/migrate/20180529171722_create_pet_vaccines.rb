class CreatePetVaccines < ActiveRecord::Migration[5.1]
  def change
    create_table :pet_vaccines do |t|
      t.references :pets, foreign_key: true
      t.references :vaccines, foreign_key: true

      t.timestamps
    end
  end
end
