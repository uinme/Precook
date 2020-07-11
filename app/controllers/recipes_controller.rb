class RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    @recipe.save
    redirect_to new_recipe_path
  end

  private
    def recipe_params
      params.require(:recipe).
        permit(:name, ingredients_attributes: [:id, :name, :amount, :cut_style, :_destroy])
    end
end
