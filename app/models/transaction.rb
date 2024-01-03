class Transaction < ApplicationRecord
  belongs_to :user
  after_save :update_user_balance

  private

  def update_user_balance
    user.update(current_balance: user.current_balance + amount)
    update(after_balance: user.current_balance)
  end

end
