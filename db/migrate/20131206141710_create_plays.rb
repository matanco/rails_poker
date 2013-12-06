class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :table_ident
      t.string :stage
      t.text :complete_game

      t.timestamps
    end
  end
end
