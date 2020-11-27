class IngredientsController < ApplicationController

  def show
    @ingredients = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ing_params)
    @ingredient.save
  end

  private

  def ing_params
    params.require(:ingredient).permit(:name)
  end

end
