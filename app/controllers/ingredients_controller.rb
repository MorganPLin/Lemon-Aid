class IngredientsController < ApplicationController
  def index
      @users = User.all
      @ingredients = Ingredient.all
      @recipes = Recipe.all
      @user = User.find(params[:id])
  end

  def show
  end

  def edit
  end

  def new
  end

  def destroy
  end
end
