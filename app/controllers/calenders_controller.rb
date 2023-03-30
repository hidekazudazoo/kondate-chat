class CalendersController < ApplicationController
  before_action :correct_user
  before_action :set_calender, only: [:show, :edit, :update, :destroy]

  def create
    Calender.create(calender_params)
    redirect_to request.referer
  end

  def show
  end

  def edit
  end

  def update
    if @calender.update(calender_params)
      redirect_to user_path(@calender.user.id)
    else
      render :edit
    end
  end

  def destroy
    @calender.destroy
    redirect_to user_path(@calender.user.id)
  end

  def destroy_all
    @calenders = Calender.all
    Calender.destroy_all
    redirect_to request.referer
  end

  private

  def calender_params
    params.require(:calender).permit(:menu, :content, :date).merge(user_id: current_user.id)
  end

  def set_calender
    @calender = Calender.find(params[:id])
  end

  def correct_user
    @user = User.find(params[:user_id])
    if @user.id != current_user.id
      redirect_to root_path
    end
  end
end
