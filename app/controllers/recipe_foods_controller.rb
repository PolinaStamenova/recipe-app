class RecipeFoodsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = @recipe.recipe_foods.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_foods = @recipe.recipe_foods.create(recipe_foods_params.merge(recipe_id: @recipe.id))
    if @recipe_foods.save
      flash[:notice] = 'Recipe food successfully added!'
      redirect_back(fallback_location: root_path)
    else
      flash[:notice] = 'Food was not added!'
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def recipe_foods_params
    params.require(:recipe_food).permit(:quantity, :food_id)
  end
end
