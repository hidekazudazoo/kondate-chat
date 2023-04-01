class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, except: :index

  def show
    @user = User.find(params[:id])
    @nickname = current_user.nickname
    @calender = Calender.new
    @calenders = @user.calenders
    @menulists = Menulist.all
  end

  def index
    @users = [current_user]
    @recipes = current_user.recipes
    correct_user
  end

  private
  def correct_user
    if params[:id] && User.find_by(id:params[:id]) != current_user
      redirect_to root_path
    end
  end
end
