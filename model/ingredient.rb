class Ingredient
  attr_accessor :recipe_id, :measurement, :measurement_unit, :ingredient

# id?

  def initialize(args)
    @recipe_id = args[:recipe_id]
    @measurement = args[:measurement]
    @measurement_unit = args[:measurement_unit]
    @ingredient = args[:ingredient] 
  end

  def plural?
    measurement > 1.0
  end

  def to_s
    suffix = plural? ? "s" : ""    
    "#{@measurement} #{@measurement_unit}#{suffix} #{@ingredient}"
  end
  
end
