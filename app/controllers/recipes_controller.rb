class RecipesController < ApplicationController
  def index; end

  def show
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create; end

  def destroy; end
end
