class UsersController < ApplicationController
  skip_before_filter :signed_in_user, :only => [:new, :create]
  before_filter :correct_user, only:[:edit, :update]
  before_filter :admin_user, only: :destroy

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      sign_in @user
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def index
    @users = User.all  
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_url
  end

  private
    def correct_user
      @user = User.find(params[:id])
      redirect_to(signin_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(signin_url) unless current_user.admin?
    end

end
