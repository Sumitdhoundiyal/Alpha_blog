class SessionsController < ApplicationController

  def new

  end



  def create
    user_params = params[:sessions]

    if user_params.present?
      user = User.find_by(email: user_params[:email])

      if user && user.authenticate(user_params[:password])
        session[:user_id] = user.id
        redirect_to root_path, notice: "Logged in successfully"
      else
        flash.now[:alert] = "Invalid email or password"
        render :new
      end
    else
      render :new
    end
  end





  def destroy
    session[:user_id] =nil
    flash[:notice] = "Logged Out"
    redirect_to root_path
  end

end
