class AddIngredientReferenceToDoses < ActiveRecord::Migration[6.0]
  def change
    add_reference :doses, :ingredient, index: true
  end
end
