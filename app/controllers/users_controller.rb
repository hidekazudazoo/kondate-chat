class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user

  def show
    @user = User.find(params[:id])
    @nickname = current_user.nickname
    @calender = Calender.new
    @calenders = @user.calenders
    @menulists = Menulist.all
  end

  private
  def correct_user
    @user = User.find(params[:id])
    if @user.id != current_user.id
      redirect_to root_path
    end
  end

end
