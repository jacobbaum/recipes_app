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
    return self
  end
  
  def format_recipes_for_export
    @recipes_array = @recipes_table.map { |row| row.inspect.to_s }
    @recipes_array.map! { |recipe| recipe.gsub!('#<CSV::Row ', 'Recipe.new(').gsub!('>', '),') }
    return self
  end

  # def create_recipes_from_table  
  #   @recipes_array = @recipes_table.map { |row| Recipe.new(row) }
  # end


  # Can't do this here.  Move to collection.rb?
  # def recipe_directions_to_array
  #   @recipes_array.map { |recipe| recipe.directions = recipe.directions.split(', ') }
  # end
  
  def import_ingredients(csv_file)
    @ingredients_table = CSV.read(csv_file, 
      { headers: true, converters: :numeric, header_converters: :symbol })
    return self
  end

  def format_ingredients_for_export
    @ingredients_array = @ingredients_table.map { |row| row.inspect.to_s }
    @ingredients_array.map! { |recipe| recipe.gsub!('#<CSV::Row ', 'Ingredient.new(').gsub!('>', '),') }
    return self
  end

  # def create_ingredients_from_table  
  #   @ingredients_array = @ingredients_table.map { |row| Ingredient.new(row) }
  # end 
  
  # Can't do this here either. Move to collection.rb? 
  # def add_ingredients_to_recipes
  #   @recipes_array.map do |recipe| 
  #     recipe.ingredients = @ingredients_array.select { |ingredient| ingredient.recipe_id == recipe.id }
  #   end
  # end  

end  

