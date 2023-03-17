class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :recipe_find

  def create
    Favorite.create(user_id: current_user.id, recipe_id: @recipe.id)
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, recipe_id: @recipe.id)
    favorite.destroy
  end

  private

  def recipe_find
    @recipe = Recipe.find_by(id: params[:recipe_id])
  end
end
