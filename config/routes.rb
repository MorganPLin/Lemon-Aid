Rails.application.routes.draw do
  get "users/:id/recipes/new" => "recipes#new", as: :new_recipe #alias refers to the entire method ie new_recipe_path
  post "users/:id/recipes/index" => "recipes#create"

  get "users/:id/recipes/:id/edit" => "recipe#edit", as: :edit_recipe

  patch "users/:id/recipes/:id" => "recipes#update" #patch is updating

  get 'users/:id/recipes/index' => "users#comment", as: :all_recipes

  get 'users/:id/recipes/:recipe_id' => "users#show", as: :recipe

  get 'users/:id/ingredients/index' => "ingredients#index", as: :all_ingredients

  get 'users/:id/addIngredient/:ingredient_id' => "users#add_ingredient", as: :add_ingredient

  get 'users/:id/myrecipes' => "recipes#index", as: :my_recipes

  get 'users/:id/myrecipes/:recipe_id' => "recipes#show", as: :my_recipe

  delete "users/:id/myrecipes/:recipe_id" => "recipes#destroy"

  # get 'users/:id/recipes/:id'

  post 'recipes/create', as: :recipes

  # get 'recipes/:id'

  get 'recipes/edit'

  get 'recipes/new'

  get 'recipes/destroy'

  get 'ingredients/index'

  get 'ingredients/show'

  get 'ingredients/new'

  get 'ingredients/destroy'

  root 'users#index', as: :users

  get 'users/new' => 'users#new', as: :new_user

  post '/' => 'users#create'

  get 'users/:id' => 'users#comment', as: :user

  get 'sessions/new' => 'sessions#new', as: :new_session

  post 'sessions/new' => 'sessions#create', as: :create_sessions

  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session

  namespace :api do
    resources :ingredients, only: [:index]
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
