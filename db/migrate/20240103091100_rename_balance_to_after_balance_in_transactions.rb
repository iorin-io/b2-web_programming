class RenameBalanceToAfterBalanceInTransactions < ActiveRecord::Migration[7.0]
  def change
    rename_column :transactions, :balance, :after_balance
  end
end
