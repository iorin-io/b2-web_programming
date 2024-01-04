class Transaction < ApplicationRecord
  belongs_to :user
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  after_save :update_user_balance

  private

  def update_user_balance

    return if description == '初期登録'
    
    new_balance = transaction_type == 'payment' ? user.current_balance - amount : user.current_balance + amount
    user.update(current_balance: new_balance)
    update_columns(after_balance: new_balance)
  end

end
