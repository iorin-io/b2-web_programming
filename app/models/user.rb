class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :transactions
  has_one :account_balance
  before_create :set_default_current_balance

  private

  def set_default_current_balance
    self.current_balance ||= 0
  end
end
