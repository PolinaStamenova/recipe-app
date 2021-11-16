class RecipeFoodsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = @recipe.recipe_foods.new
  end

  def create
    @recipe_food = current_user.recipes.recipe_foods.build(recipe_food_params)
    flash[:notice] = 'Recipe food successfully added!' if @recipe_food.save
    redirect_to recipe_path(recipe_food_params[:recipe_id])
  end

  def recipe_food_params
    params.fetch(:recipe_food).permit(:quantity, :food_id, :recipe_id)
  end
end
