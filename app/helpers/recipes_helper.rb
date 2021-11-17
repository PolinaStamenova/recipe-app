module RecipesHelper
  def sum_of_food_price(params)
    array = []
    params.each do |recipe_food|
      array << recipe_food.food.price
    end
  return number_to_currency(array.sum)
  end
end
