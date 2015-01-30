require_relative './recipe'

class Collection

  def self.all
    [
    Recipe.new(
    id: 01,
    title: "Pineapple Cheese Salad",
    ingredients: [
  Ingredient.new(
    measurement: 1.0,
    measurement_unit: "Package (3 ounce)",
    ingredient: "Lemon Jello"
  ),
  Ingredient.new(
    measurement: 1.75,
    measurement_unit: "Cup",
    ingredient: "Water"
  ),
  Ingredient.new(
    measurement: 1.0,
    measurement_unit: "Cup",
    ingredient: "Shredded Cheese"
  ),
  Ingredient.new(  
    measurement: 1.0,
    measurement_unit: "tbsp (heaping)",
    ingredient: "Mayonnaise"
  ),
  Ingredient.new(  
  measurement: 1.0,
  measurement_unit: "Cup",
  ingredient: "Crushed Pineapple, drained"
  ),
  Ingredient.new(
  measurement: 1.0,
  measurement_unit: "Cup",
  ingredient: "Miniature Marshmallows"
  ),
  Ingredient.new(
  measurement: 1.0,
  measurement_unit: "Cup",
  ingredient: "Whipped Cream"
  ),
  Ingredient.new(
  measurement: 0.5,
  measurement_unit: "Cup",
  ingredient: "Pecans, chopped"
  )
  ],
  directions: [
    "Dissolve together water and lemon jello. Place in refrigerator until almost set, then whip until foamy.",
    "Add remaining ingredients and refrigerate."
  ],
  cooking_time: nil,
  source: "May Gibler",
  category: "Salads",
  )
  ]
  end

  def self.find(id)
    all.find do |recipe|
      recipe.id == id
    end
  end

end

