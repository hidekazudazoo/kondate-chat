class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    Favorite.create(user_id: current_user.id, recipe_id: params[:id])
    redirect_to root_path
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, recipe_id: params[:id])
    favorite.destroy
    redirect_to root_path
  end
end
