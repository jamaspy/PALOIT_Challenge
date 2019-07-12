class AddZerosToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :zeros, :integer
  end
end
