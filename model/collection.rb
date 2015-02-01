require_relative './recipe'
require_relative './ingredient'
require_relative './source'

class Collection

  def self.sources
    [
    Source.new(id: 1, name: "Jeanette Oliphant", description: "My maternal grandmother.", image: nil),
    Source.new(id: 2, name: "May Gibler", description: "Close friend of my maternal grandomother Jeanette Oliphant.", image: nil)
    ]
  end
    
  def self.all
    [
    Recipe.new(
    id: 01,
    title: "Pineapple Cheese Salad",
    ingredients: [
      Ingredient.new(measurement: 1.0, measurement_unit: "Package (3 ounce)", ingredient: "Lemon Jello", notes: nil),
      Ingredient.new(measurement: 1.75, measurement_unit: "Cup", ingredient: "Water", notes: nil),
      Ingredient.new(measurement: 1.0, measurement_unit: "Cup", ingredient: "Shredded Cheese", notes: nil),
      Ingredient.new(measurement: 1.0, measurement_unit: "tbsp (heaping)", ingredient: "Mayonnaise", notes: nil),
      Ingredient.new(measurement: 1.0, measurement_unit: "Cup", ingredient: "Crushed Pineapple, drained",notes: nil),
      Ingredient.new(measurement: 1.0, measurement_unit: "Cup", ingredient: "Miniature Marshmallows",notes: nil),
      Ingredient.new(measurement: 1.0, measurement_unit: "Cup", ingredient: "Whipped Cream", notes: nil),
      Ingredient.new(measurement: 0.5, measurement_unit: "Cup", ingredient: "Pecans, chopped", notes: nil)
    ],
    directions: [
      "Dissolve together water and lemon jello. Place in refrigerator until almost set, then whip until foamy.",
      "Add remaining ingredients and refrigerate."
    ],
    cooking_time: nil,
    source: self.sources[1],
    category: "Salads",
    notes: nil,
    image: nil,
    ),
  

Recipe.new(
  id: 02, 
  title: "Southern Biscuits", 
  directions: ["Mix all dry ingredients together and sift", "Cut in shortening", "Add egg and milk and stir together", "Knead", "Roll 1/2 inch thick", "Cut with biscuit cutter", "Bake 10-15 minutes in 450 degree oven."], 
  ingredients: [
    Ingredient.new(recipe_id: 02, measurement:2.0, measurement_unit:"Cup", ingredient:"Flour", notes:"Sifted"),
    Ingredient.new(recipe_id: 02, measurement:4.0, measurement_unit:"tsp", ingredient:"Cream of Tartar", notes:nil),
    Ingredient.new(recipe_id: 02, measurement:0.5, measurement_unit:"tsp", ingredient:"Salt", notes:nil),
    Ingredient.new(recipe_id: 02, measurement:2.0, measurement_unit:"tbsp", ingredient:"Sugar", notes:nil),
    Ingredient.new(recipe_id: 02, measurement:0.5, measurement_unit:"Cup", ingredient:"Shortening", notes: "Slightly less than 1/2 cup"),
    Ingredient.new(recipe_id: 02, measurement:1.0, measurement_unit: nil, ingredient:"Egg", notes: "Unbeaten"),
    Ingredient.new(recipe_id: 02, measurement:0.66, measurement_unit:"Cup", ingredient:"Milk", notes:nil) ],
  cooking_time: nil, 
  source: self.sources[0], 
  category: "Baked Goods", 
  notes: nil, 
  image: "southern-biscuits.jpg"),


Recipe.new(
  id: 03, 
  title: "Mother’s Chocolate Cake", 
  directions: ["Cream sugar and Cisco", "Add eggs and beat well", "Combine sour milk and soda.", "Dissolve cocoa in hot water and add to milk and soda.", "Add flour and vanilla and stir together.", "Bake in two greased and floured 8 inch cake layer pans.", "Check for doneness with a toothpick."], 
  ingredients: [
    Ingredient.new(recipe_id: 03, measurement:1.5, measurement_unit:"Cup", ingredient:"Sugar", notes:nil),
    Ingredient.new(recipe_id: 03, measurement:0.5, measurement_unit:"Cup", ingredient:"Crisco", notes:nil),
    Ingredient.new(recipe_id: 03, measurement:2.0, measurement_unit:nil, ingredient:"Egg", notes:nil),
    Ingredient.new(recipe_id: 03, measurement:1.0, measurement_unit:"Cup", ingredient:"Sour Milk", notes:nil),
    Ingredient.new(recipe_id: 03, measurement:2.0, measurement_unit:"tbsp", ingredient:"Cocoa", notes:"Heaping"),
    Ingredient.new(recipe_id: 03, measurement:0.5, measurement_unit:"Cup", ingredient:"Hot Water", notes:nil),
    Ingredient.new(recipe_id: 03, measurement:2.0, measurement_unit:"Cup", ingredient:"Flour", notes:nil),
    Ingredient.new(recipe_id: 03, measurement:1.0, measurement_unit:"tsp", ingredient:"Soda", notes:nil),
    Ingredient.new(recipe_id: 03, measurement:1.0, measurement_unit:"tsp", ingredient:"Vanilla", notes:nil) ],
  cooking_time: nil,
  source: self.sources[0], 
  category: "Baked Goods", 
  notes:"Emma Larson. This is a special cake!!", 
  image:"mothers-chocolate-cake.jpg"),

]
  end

  def self.find(id)
    all.find do |recipe|
      recipe.id == id
    end
  end

  def self.find_source(id)
    sources.find do |source|
      source.id == id
    end  
  end


  # def self.list_categories
  #   categories = all.map { |recipe| recipe.category }.uniq
  #   categories.each do |category|
  #     puts category
  #     list = Collection.all.select { |recipe| recipe.category==category }
  #     list.each { |recipe| puts recipe.title }
  #   end  
  # end

end

