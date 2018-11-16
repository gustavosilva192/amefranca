class UsersController < ApplicationController
	#helper 'users'

	def list
		@user = User.all
	end
	
	def show
		@user = User.find(params[:id])
	end
	
	def new
		@user = User.new
	end

	def create 
		@user = User.new(user_params) 
		if @user.save 
			session[:user_id] = @user.id 
			redirect_to '/' 
		else 
			senha = @user.password
			senhaConfirm = @user.password_confirmation
			if senha.length < 6 
				flash.now[:error] = "A senha deve ser maior a 5 caracteres!"
				render 'new'
			else
				if senha != senhaConfirm
					flash.now[:error] = "Senhas não conferem!"
					render 'new'
				else
					redirect_to '/login', :flash => { :error => "Usuário já cadastrado!"}
				end
			end 
		end 
	end
	
	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		
		if @user.update_attributes(user_params)
		   redirect_to :action => 'show', :id => @user
		else
		   render 'edit'
		end
	end
	
	private
	
	  def user_params
	    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
	  end

end
