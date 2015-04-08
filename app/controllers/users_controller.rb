class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	puts "new function"
  end

def edit
  @user = User.find(params[:id])
end

  def create
	@user = User.new(user_params)
		if @user.save
   	 		redirect_to @user
  		else
    		render 'new'
  		end
	end

def update
  @user = User.find(params[:id])
	if @user.update(user_params)
 		redirect_to @user
	else
    	render 'edit'
  	end
end

def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to users_path
end

  def show
  	 @user = User.find(params[:id])
  end

  

  private
  def user_params
    params.require(:user).permit(:name,:username,:email,:password,:confirmpassword,:address)
  end


end