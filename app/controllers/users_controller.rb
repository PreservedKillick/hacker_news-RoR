class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
    render new_user_path
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "#{@user.name} was created"
      redirect_to user_path(@user)
    else
      render new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params[:user])
      flash[:notice] = "User updated."
      redirect_to user_path
    else
      render edit_user_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "User was deleted."
      redirect_to users_path
    else
      render user_path(@user)
    end
  end

end
