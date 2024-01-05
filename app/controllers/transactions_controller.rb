class TransactionsController < ApplicationController
  def index
    @transactions = current_user.transactions.order(transaction_date: :desc)
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = current_user.transactions.new(transaction_params)
    if @transaction.save
      redirect_to root_path
    else
      # 失敗時の処理
      Rails.logger.debug @transaction.errors.full_messages
      render :new
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:amount, :description, "transaction_date(1i)", "transaction_date(2i)", "transaction_date(3i)", "transaction_date(4i)", "transaction_date(5i)", :transaction_type)
  end

end
