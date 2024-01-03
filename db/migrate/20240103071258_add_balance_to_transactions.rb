class AddBalanceToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :balance, :decimal
  end
end
