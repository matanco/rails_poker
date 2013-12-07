class AddPotToPlay < ActiveRecord::Migration
  def change
    add_column :plays, :pot, :string
  end
end
