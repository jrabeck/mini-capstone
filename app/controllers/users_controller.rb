class UsersController < ApplicationController

	def new
		render 'new.html.erb'
	end

	def create
		user = User.new(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])

		if user.save 
			session[:user_id] = user.id
			flash[:success] = "You are signed up!"
			redirect_to "/index"
	  else
	  	flash[:warning] = "Passwords didn't match!"
	  	redirect_to '/signup' 
	  end

	end

end
