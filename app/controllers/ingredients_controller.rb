class IngredientsController < ApplicationController
  def index

      @ingredients = Ingredient.all
      @user = User.find(params[:id])

      # SEARCH BAR
      if params[:query]
      search_by = params[:search].to_sym
      ingredient_list = Ingredient.all
      @ingredients = []
      ingredient_list.each do |ingredient|
        if ingredient.category.name.downcase.include? params[:query].downcase
          @ingredients << ingredient
        elsif ingredient.name.downcase.include? params[:query].downcase
          @ingredients << ingredient
        end
      end
        return @ingredients
    end
    @paginate = true
    @ingredients = Ingredient.page(params[:page]).per(6)
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
