class UsersController < ApplicationController
  def new
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
private
    def user_params
        params.require(:user).permit(:username)
    end