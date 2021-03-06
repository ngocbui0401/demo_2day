class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy,
                                        :following, :followers]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
  	@user = User.find_by(id: params[:id])
    @entries = @user.entries.paginate(page: params[:page])
    @entry = current_user.entries.build if logged_in? 
  end
  
  def new
  	@user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save!
       @user.send_activation_email
      flash[:success]="Please check your email to activate your account."
     redirect_to root_url
    else
      render 'new'
    end
  end
def edit
  @user = User.find(params[:id])
end
def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
    else
      render 'edit'
    end
  end
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
     # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
            redirect_to(root_url) unless current_user?(@user)

    end
    def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end