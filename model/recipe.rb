require_relative './ingredient'

class Recipe
  attr_accessor :id, :title, :directions, :ingredients, :cooking_time, :source, :category, :notes, :image

  # Number of servings?
  def initialize(args)
    @id = args[:id]
    @title = args[:title]
    @directions = args[:directions]
    @ingredients = args[:ingredients]
    @cooking_time = args[:cooking_time] #mandatory, but, won't always apply... approx time?
    @source = args[:source]
    @category = args[:category]
    @notes = args[:notes]
    @image = args[:image]
  end

  def to_s

  end

end

#adding alt ingredients?  see 'whipped cream' in pineapple salad


# id: 02,
# title: 
# directions: 
# ingredients:
 
#   measurement:
#   measurement_unit:
#   ingredient:

# cooking_time:
# source:
# category:

# id: 03,
# title:
# directions: 
# ingredients:
 
#   measurement:
#   measurement_unit:
#   ingredient:

# cooking_time:
# source:
# category: