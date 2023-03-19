class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @nickname = current_user.nickname
    if @user.id != current_user.id
      redirect_to root_path
    end
    @calender = Calender.find(params[:id])
    @calenders = @user.calenders
  end
end
