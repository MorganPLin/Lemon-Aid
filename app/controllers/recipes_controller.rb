class RecipesController < ApplicationController
  def index
      @users = User.all
      @recipes = Recipe.all
      @user = User.find(params[:id])
  end

  def show
      @users = User.all
      @recipes = Recipe.all
      @user = User.find(params[:id])
  end

  def edit
  end

  def new
  end

  def destroy
  end
end
