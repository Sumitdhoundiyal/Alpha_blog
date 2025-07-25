class UsersController < ApplicationController
before_action :set_user, only:[:show,:edit,:update]
    def index
      @users = User.paginate(page: params[:page], per_page: 5)

    end

    def new
      @user = User.new
    end

    def show
      @articles = @user.articles.paginate(page: params[:page], per_page: 5)
    end

    def edit
    end

    def update

      if @user.update(user_params)
        flash[:notice] = "Your user Update Successfully"
        redirect_to @user
      else
        render 'edit'
      end
    end

    def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          flash[:notice] = "Welcome to the Alpha Blog,you have successfully sign-up"
          redirect_to articles_path

        else
            render 'new'
        end
    end


  private

  def user_params
    params.require(:user).permit(:username,:email,:password)
  end

  def set_user
    @user =User.find(params[:id])
  end
end
