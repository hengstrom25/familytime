class SessionsController < ApplicationController

    def new
      @user = User.new
    end
 
    def create
  		@user = User.find_by(name: params[:user][:name])
  		if @user && @user.authenticate(params[:user][:password])
  			login
  		else
  			flash[:alert] = "Please make sure you have logged in correctly. If you do not have a login, please create a new account."
  			redirect_to signin_path
  		end
    end
    
    def destroy
      session.clear
      redirect_to root_path
    end
  
  private
  
  def login
  	session[:user_id] = @user.id
  	redirect_to user_path(@user)
  end
 

end