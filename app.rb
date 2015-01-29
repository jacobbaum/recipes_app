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
  @recipes = Collection.all
  erb :recipes
end  

get '/recipes/:id' do
  @recipe = Collection.find(params[:id].to_i)
  erb :recipe
end
