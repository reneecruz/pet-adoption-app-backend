class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :age
      t.string :breed
      t.string :img
      t.string :location

      t.timestamps
    end
  end
end
