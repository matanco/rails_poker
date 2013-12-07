class CreateUserBalances < ActiveRecord::Migration
  def change
    create_table :user_balances do |t|
      t.integer :user_id
      t.string :balance

      t.timestamps
    end
  end
end
