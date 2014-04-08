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
      redirect_to user_path(@user)
    else
      @error_messages = []
      @user.errors.full_messages.each { |message| @error_messages << "Error: #{message}"}
      @error_messages.each { |error| flash[:alert] = "#{error}" }
      render 'edit'
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
