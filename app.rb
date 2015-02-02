require 'sinatra'
require_relative './model/collection'

get '/' do
  erb :home
end

# get '/about' do
#   erb :about
# end

# get '/items' do
#   @search = params[:search]
#   if @search && @search.length > 0
#     @items = Inventory.search(@search)
#   else  
#   @items = Inventory.all
#   end
#   erb :items
# end

get '/recipes' do
  @active = 'alpha'
  @search = params[:search]
  if @search && @search.length > 0
    @recipes = Collection.search(@search)
  else
    @recipes = Collection.all  
  end
  erb :recipes
end 

# get '/items' do
#   @active = 'items'
#   @search = params[:search]
#   if @search && @search.length > 0
#     @items = Inventory.search(@search)
#   else
#     @items = Inventory.all
#   end
#   erb :items
# end

get '/recipes/alphabetical' do
  @active = 'alpha'
  @search = params[:search]
  if @search && @search.length > 0
  @recipes = Collection.search(@search)
  else
    @recipes = Collection.all  
  end
  erb :recipes
end  

get '/recipes/by-category' do
  @active = 'category'
  @search = params[:search]
  if @search && @search.length > 0
    @recipes = Collection.search(@search)
  else
    @recipes = Collection.all  
  end
  erb :categories
end

get '/recipes/by-source' do
  @active = 'source'
  @search = params[:search]
  if @search && @search.length > 0
    @recipes = Collection.search(@search)
  else
    @recipes = Collection.all  
  end
  @sources = Collection.sources
  erb :sources
end  

get '/recipes/:id' do
  @recipe = Collection.find(params[:id].to_i)
  erb :recipe, :layout => :recipe_layout   
end

get '/sources/:id' do
  @source = Collection.find_source(params[:id].to_i)
  erb :person, :layout => :recipe_layout
end  
