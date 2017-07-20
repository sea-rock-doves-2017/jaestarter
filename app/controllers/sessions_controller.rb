class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def session_params
      params.require(:session).permit(:email, :password)
    end
end
