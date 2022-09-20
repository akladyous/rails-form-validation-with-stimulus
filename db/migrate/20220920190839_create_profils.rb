class CreateProfils < ActiveRecord::Migration[7.0]
  def change
    create_table :profils do |t|
      t.string :first_name,
      t.string :last_name,
      t.integer :age
      t.datetime :birthdate

      t.timestamps
    end
  end
end
