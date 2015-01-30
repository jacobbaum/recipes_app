require_relative '../model/recipe'
require_relative '../model/ingredient'

class RecipeCollection
  attr_accessor :recipes_table, :recipes_array, :ingredients_table, :ingredients_array

  def initialize
    @recipes_table     = nil
    @recipes_array     = nil
    @ingredients_table = nil
    @ingredients_array = nil
  end  

  def import_recipes(csv_file)
    @recipes_table = CSV.read(csv_file, 
      { headers: true, converters: :numeric, header_converters: :symbol })
  end
  
  def create_recipes_from_table  
    @recipes_array = @recipes_table.map { |row| Recipe.new(row) }
  end

  def recipe_directions_to_array
    @recipes_array.map { |recipe| recipe.directions = recipe.directions.split(', ') }
  end
  
  def import_ingredients(csv_file)
    @ingredients_table = CSV.read(csv_file, { headers: true, converters: :numeric, header_converters: :symbol })
  end

  def create_ingredients_from_table  
    @ingredients_array = @ingredients_table.map { |row| Ingredient.new(row) }
  end 
  
  def add_ingredients_to_recipes
    @recipes_array.map do |recipe| 
      recipe.ingredients = @ingredients_array.select { |ingredient| ingredient.recipe_id == recipe.id }
    end
  end  

end  

