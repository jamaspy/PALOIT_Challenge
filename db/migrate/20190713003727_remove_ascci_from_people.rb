class RemoveAscciFromPeople < ActiveRecord::Migration[5.2]
  def change
    remove_column :people, :ascii, :integer
    remove_column :people, :binary, :integer
    remove_column :people, :zeros, :integer
  end
end
