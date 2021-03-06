class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
      @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    createScenarios
    @user = User.new(user_params)
        #byebug
        
        if @user.save
            #byebug
            redirect_to @user
        else
            render 'index'
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
    
    redirect_to :controller => 'welcome', :action => 'index'
  end

private
    def user_params
        params.require(:user).permit(:username, :mage, :bow, :sword, :shield)
    end
end