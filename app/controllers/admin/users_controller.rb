module Admin
  class UsersController < BaseController
    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def create
      @user = User.create(user_params)

      respond_with :admin, @user
    end

    def show
      @user = User.find_by_id(params[:id])
      
      respond_with(@user)
    end

    private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
  end
end