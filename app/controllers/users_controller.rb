class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create

      if User.new(user_params).save
        #redicret to signed in
        flash[:success] = 'you are registered'
        redirect_to users_path
      else

        flash[:error] = 'registration has failed'

        redirect_to new_user_path

      end
  end

  def show
    @user = User.find(params[:id])
  end

  def fridgeSearch#buttonclicked
    @users = User.all
    @recipes = Recipe.all
    @user = User.find(params[:id])
    @user_ingredients = User.find(params[:id]).ingredients

      @recipes = []
      recipe_list = Recipe.all
      recipe_list.each do |recipe|
      count = 0
        recipe.ingredients.each do |ingredient|
          if @user_ingredients.include? ingredient
            count += 1
          end
        end
        if recipe.ingredients.length == count
          @recipes << recipe
        end

      end
        return @recipes
  end


  def comment
    @users = User.all
    @recipes = Recipe.all
    @user = User.find(params[:id])
    @user_ingredients = User.find(params[:id]).ingredients

    #SEARCH INGREDIENTS BY FRIDGE if user ingrediens overlap with recipe ingredient

    # SEARCH BAR FOR RECIPES
    if params[:query]
      search_by = params[:search].to_sym
      recipe_list = Recipe.all
      @recipes = []

      recipe_list.each do |recipe|
        if recipe.ingredients.name.downcase.include? params[:query].downcase
          @recipes << recipe
        elsif recipe.name.downcase.include? params[:query].downcase
          @recipes << recipe
        elsif recipe.list_ingredients.gsub(/[1234567890,]/,"").split.include? params[:query].downcase
            @recipes << recipe
         end
      end
        return @recipes

    end


    if params[:commit] == "WHAT'S FOR DINNER?"
    @recipes = fridgeSearch
    end
    # @paginate = true
    # @recipes = Recipe.page(params[:page]).per(4)


  end

  def add_ingredient
    ingredient = Ingredient.find(params[:ingredient_id])
    IngredientsUser.create({user_id: params[:id], ingredient_id: ingredient.id})
    flash[:success] = ingredient.name + 'added to your refridgerator'
    redirect_to :back
  end


private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :handle, :password,:password_confirmation)
  end

  def recipe_params
    params.require(:recipe).permit(:name, :image_url, :prep_time, :total_time,
      :calories_per_serving, :list_ingredients, :instructions, :gluten_free, :paleo,
      :vegetarian, :user_id)
  end

end
