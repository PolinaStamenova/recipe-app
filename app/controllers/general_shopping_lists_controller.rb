class GeneralShoppingListsController < ApplicationController
  def index
    @recipe = Recipe.find(params[:id])
  end
end