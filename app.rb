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
  @recipes = Collection.all
  erb :recipes
end 


get '/recipes/alphabetical' do
  @active = 'alpha'
  @recipes = Collection.all
  erb :recipes
end  

get '/recipes/by-category' do
  @active = 'category'
  @recipes = Collection.all
  erb :categories
end

get '/recipes/by-source' do
  @active = 'source'
  @recipes = Collection.all
  @sources = Collection.sources
  erb :sources
end  

get '/recipes/:id' do
  @recipe = Collection.find(params[:id].to_i)
  erb :recipe
end

get '/sources/:id' do
  @source = Collection.find_source(params[:id].to_i)
  erb :person
end  
