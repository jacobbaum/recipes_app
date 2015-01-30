require 'CSV'
require 'pry'
require_relative './recipeCollection'

collection = RecipeCollection.new

print "Recipe file to import: "
# csv_file = gets.chomp

collection.import_recipes('./csv_files/recipes.csv')    
collection.create_recipes_from_table
collection.recipe_directions_to_array

# binding.pry

print "Ingredient file to import: "
# csv_file = gets.chomp

collection.import_ingredients('./csv_files/ingredients.csv')
collection.create_ingredients_from_table
binding.pry

collection.add_ingredients_to_recipes

print collection.recipes_array
