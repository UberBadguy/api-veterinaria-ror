class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :f_name
      t.string :l_name
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
