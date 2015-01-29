class Ingredient
  attr_accessor :measurement, :measurement_unit, :ingredient

# id?

  def initialize(args)
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
