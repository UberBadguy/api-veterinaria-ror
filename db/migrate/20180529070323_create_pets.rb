class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.references :users, foreign_key: true
      t.integer :age
      t.date :birth

      t.timestamps
    end
  end
end
