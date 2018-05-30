class CreatePetMedicines < ActiveRecord::Migration[5.1]
  def change
    create_table :pet_medicaments do |t|
      t.references :pets, foreign_key: true
      t.references :medicaments, foreign_key: true

      t.timestamps
    end
  end
end
