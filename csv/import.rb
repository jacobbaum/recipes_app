require 'CSV'
require 'pry'
require_relative './recipeCollection'

collection = RecipeCollection.new

# print "Recipe file to import: "
# csv_file = gets.chomp

collection.import_recipes('./csv_files/recipes03.csv')    

binding.pry

collection.format_recipes_for_export


# print "Ingredient file to import: "
# csv_file = gets.chomp

collection.import_ingredients('./csv_files/ingredients03.csv')
collection.format_ingredients_for_export


collection.recipes_array.each { |recipe| puts recipe }
collection.ingredients_array.each { |ingredient| puts ingredient }
