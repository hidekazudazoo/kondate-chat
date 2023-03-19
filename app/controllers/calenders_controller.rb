class CalendersController < ApplicationController
  def create
    calender = Calender.create(calender_params)
    redirect_to "/users/#{calender.user.id}"
  end

  def show
    @calenders = Calender.find(params[:id])
  end

  private

  def calender_params
    params.require(:calender).permit(:menu, :content, :date).merge(user_id: current_user.id)
  end
end
