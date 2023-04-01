class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: :show

  def show
    @user = User.find(params[:id])
    @nickname = current_user.nickname
    @calender = Calender.new
    @calenders = @user.calenders
    @menulists = Menulist.all
  end

  def index
    @user = User.find_by(id: params[:id])
    @recipes = current_user.recipes
  end

  private
  def correct_user
    @user = User.find_by(id: params[:id])
    if @user.nil? || @user.id != current_user.id
      redirect_to root_path
    end
  end

end
