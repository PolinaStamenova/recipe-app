class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def create
    @food = current_user.foods.build(food_params)
    if @food.save
      flash[:notice] = 'Food successfully added!'
      redirect_to foods_path
    else
      render :index
    end
  end

  def destroy
    @food = Food.find(params[:id])
    authorize! :destroy, @food
    @food.destroy
    flash[:notice] = 'Food susseccfully deleted!'
    redirect_back(fallback_location: root_path)
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurmnet_units, :price)
  end
end
