class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by_email(params[:session][:email])
	  	if @user && @user.authenticate(params[:session][:password])
	    	session[:user_id] = @user.id
	    	redirect_to '/intranet' 
	 	else
	   		redirect_to '/login', :flash => { :error => "Não foi possível conectar, verifique usuário/senha e tente novamente!" }
	  	end 
	end

	def destroy 
	  	session[:user_id] = nil 
	  	redirect_to '/' 
	end
end
