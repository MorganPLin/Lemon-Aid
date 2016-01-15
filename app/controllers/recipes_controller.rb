class RecipesController < ApplicationController
  def index
      @users = User.all
      @recipes = Recipe.all
      @user = User.find(params[:id])
  end

  def show #myrecipes
      @users = User.all
      @recipes = Recipe.all
      @user = User.find(params[:id])
      @recipe = Recipe.find(params[:recipe_id])
  end

  def edit
  end

  def new
    @recipe = Recipe.new
    @user = User.find(params[:id])
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to my_recipes_path(params[:recipe][:user_id])
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update_attributes.recipe_params
      redirect_to recipe_path(@recipe)
    else
      render :edit
    end
  end

  def destroy
      @recipe = Recipe.find(params[:recipe_id])
      @recipe.destroy
      redirect_to my_recipes_path
  end

  private #DEFINE RECIPE PARAMS

  def recipe_params
    params.require(:recipe).permit(:name, :image_url, :prep_time, :total_time,
      :calories_per_serving, :list_ingredients, :instructions, :gluten_free, :paleo,
      :vegetarian, :user_id)
  end
end
