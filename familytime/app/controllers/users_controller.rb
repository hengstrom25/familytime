class UsersController < ApplicationController
before_action :logged_in?
  
	def new
		@user = User.new #for empty form	
	end
	
	def index
		users = User.all
		render json: users
	end
	
	def create
  		@user = User.new(user_params)
  		@user.save
  		if @user
  			session[:user_id] = @user.id
  			render json: user, status: 201
  		else
  			render :new
  		end
  	end
  	
  	def show
  		if logged_in?
  			@user = User.find_by(id: params[:id])
  			render json: user
  		else
  			redirect_to root_url
  		end
  	end
  
	private
  
	def user_params
  		params.require(:user).permit(:name, :email, :password,)
  	end
end
  