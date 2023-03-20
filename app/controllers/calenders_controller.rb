class CalendersController < ApplicationController
  before_action :set_calender, only: [:show, :edit, :update]
  def create
    Calender.create(calender_params)
    redirect_to request.referer
  end

  def show
  end

  def edit
    @user = @calender.user
  end

  def update
    if @calender.update(calender_params)
      redirect_to user_path(@calender.user.id)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def calender_params
    params.require(:calender).permit(:menu, :content, :date).merge(user_id: current_user.id)
  end

  def set_calender
    @calender = Calender.find(params[:id])
  end
end
