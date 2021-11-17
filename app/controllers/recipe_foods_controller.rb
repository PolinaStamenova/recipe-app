class RecipeFoodsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = @recipe.recipe_foods.new
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_foods = @recipe.recipe_foods.create(recipe_foods_params)
    if @recipe_foods.save
      flash[:notice] = 'Recipe food successfully added!'
    else
      flash[:notice] = 'Food was not added!'
    end
    redirect_to @recipe
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_foods = @recipe.recipe_foods.update(recipe_foods_params)
    flash[:notice] = 'Food was successfully updated!'
    redirect_to @recipe
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.find(params[:id])
    @recipe_food.destroy
    flash[:notice] = 'Food was successfully removed from the recipe!'
    redirect_to @recipe
  end

  private

  def recipe_foods_params
    params.require(:recipe_food).permit(:quantity, :food_id)
  end
end
