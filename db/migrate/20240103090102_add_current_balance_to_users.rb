class AddCurrentBalanceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :current_balance, :decimal
  end
end
