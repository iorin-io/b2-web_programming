class Users::RegistrationsController < Devise::RegistrationsController
	def create
		super do |user|
		  if user.persisted?
			initial_balance = params[:user][:current_balance].to_f
			user.transactions.create(amount: initial_balance, description: "初期登録", transaction_date: Time.current, after_balance: initial_balance)
		  end
		end
	  end
  
	private
  
	def sign_up_params
	  params.require(:user).permit(:email, :password, :password_confirmation, :current_balance)
	end
  end