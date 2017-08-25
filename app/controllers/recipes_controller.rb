#contents of app/controllers/recipes_controller.rb
class RecipesController < ApplicationController
  def index
  	@search_term = params[:looking_for] || 'chocolate'
  	@recipe = Recipe.for(@search_term)
  end
end