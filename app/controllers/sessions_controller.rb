class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
		session[:user_id] = user.id
		flash[:success] = "You are logged in!"
		redirect_to '/index'
		else 
			flash[:warning] = "Invalid email or password!"
			redirect_to "/login"
		end


	end

	def destroy
		session[:user_id] = nil
		redirect_to "/index"
	end

end
