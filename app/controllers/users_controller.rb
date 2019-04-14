class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
        #byebug
        
        if @user.save
            #byebug
            redirect_to @user
        else
            render 'new'
        end
  end
  
  def edit
        @user = User.find(params[:id])
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
  def create
        @user = User.new(user_params)
        byebug
        
        if @user.save
            byebug
            redirect_to @user
        else
            render 'new'
        end
  end
end
<<<<<<< HEAD
private
    def user_params
        params.require(:user).permit(:username)
    end
=======

private
    def user_params
        params.require(:id)
    end
>>>>>>> c6df9ec1569f269d81f70daf0c2fb5d51edc7c49
