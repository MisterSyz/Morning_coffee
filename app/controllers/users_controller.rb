class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # if @user.save
    #   log_in @user
    #   flash[:success] = "Welcome to the Sample App!"
    #   redirect_to @user
    # else
    #   render 'new'
    if @user.save
    	redirect_to root_path
    else redirect_to root_path
    end
    # end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

end
