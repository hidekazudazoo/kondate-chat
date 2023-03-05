class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    Recipe.create(recipe_params)
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :category_id, :headline, :ingredient, :derection, :memo, :image).merge(user_id: current_user.id)
  end
end
