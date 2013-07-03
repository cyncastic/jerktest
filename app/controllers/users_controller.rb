class UsersController < ApplicationController
  def index
    @categories = Category.all
    @users = User.order(:name)

    respond_to do |format|
      format.html
    end
  end

  def show
    @categories = Category.all
    @user = User.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @categories = Category.all
    @user = User.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_url,
          notice: "User #{@user.name} was successfully created." }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to users_url,
          notice: "User #{@user.name} was successfully updated." }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.js { render nothing: true }
    end
  end
end