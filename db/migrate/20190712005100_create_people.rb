class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.integer :ascii
      t.integer :binary

      t.timestamps
    end
  end
end
