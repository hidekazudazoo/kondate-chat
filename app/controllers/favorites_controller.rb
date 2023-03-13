class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :recipe_find

  def create
    Favorite.create(user_id: current_user.id, recipe_id: params[:id])
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, recipe_id: params[:id])
    favorite.destroy
  end

  private
  def recipe_find
    @recipe = Recipe.find(params[:id])
  end

end
