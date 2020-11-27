# require 'faker'

puts 'Seeds....'

puts 'setting cocktails'
name1 = ["Mint Julep", "Whiskey Sour", "Mojito"]
Cocktail.destroy_all
  name1.each do |i|
    Cocktail.create(
      name: i
  )
end

puts 'Done cocktails!'
puts '*' * 20
puts '*' * 20
puts '*' * 20

puts 'setting ingreds'
name2 = ["lemon", "ice", "mint leaves"]
Ingredient.destroy_all
name2.each do |i|
  Ingredient.create(
    name: i
  )
end

cocktail_1 = Cocktail.first
ingredient_1 = Ingredient.first
dose_1 = Dose.create(cocktail:cocktail_1, ingredient:ingredient_1, description: "A lot!")

puts 'Done ingredients!'

puts 'Done!'

