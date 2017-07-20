class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(session_params)
    if @user.save
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
