class UsersController < ApplicationController
before_filter :authorize_admin, only: [:userslist, :create, :new]

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		
		if @user.save
			session[:user_id] = @user.id
			redirect_to '/homepage'
		else
			redirect_to '/userslist'
		end
	end
	
	def userslist
		@users = User.all
	end
	
private
	
	def user_params
		params.require(:user).permit(:username, :first_name, :last_name, :apartment_number, :password, :password_confirmation)
	end

end
