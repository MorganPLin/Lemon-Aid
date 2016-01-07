# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all

user = User.create ([ {first_name: "Kanyee",
                       last_name: "Talot",
                       handle: "N_uknowit",
                       email: "Foodie@greatfoods.com",
                       password: "123",
                       password_confirmation: "123",
                       my_fridge: "The Vault",
                       profile_image_url: "http://i2.kym-cdn.com/photos/images/facebook/000/030/404/1260585284155.png",
                       super_chef: true
                      },

                      {first_name: "Mickey",
                       last_name: "Mouse",
                       handle: "cheeseplease22",
                       email: "themouse@disney.com",
                       password: "123",
                       password_confirmation: "123",
                       my_fridge: "Mickey's Fridge",
                       profile_image_url: "http://img.lum.dolimg.com/v1/images/open-uri20150422-20810-e6k8tr_d1dd2596.png",
                       super_chef: true
                      },

                      {first_name: "Liz",
                       last_name: "Lemon",
                       handle: "liz_lemonxpizza",
                       email: "1pushupayear@gmail.com",
                       password: "123",
                       password_confirmation: "123",
                       my_fridge: "No Vegetables Allowed",
                       profile_image_url: "http://cdn1.theodysseyonline.com/files/2015/11/13/635829908730227381-1996171562_liz-lemon.png",
                       super_chef: false
                      }

                     ])

category = Category.create ([ {name: "protein"}, #1
                              {name: "cooking oil"}, #2
                              {name: "leafy vegetable"}, #3
                              {name: "melting cheese"}, #4
                              {name: "salad cheese"}, #5
                              {name: "condiment"}, #6
                              {name: "starch"}, #7
                              {name: "ramen"}, #8
                              {name: "eggs"}, #9
                              {name: "salt"}, #10
                              {name: "pepper"}, #11
                              {name: "sesame oil"}, #12
                              {name: "olives"}, #13
                              {name: "soy sauce"}, #14
                              {name: "sugar"}, #15
                              {name: "milk"}, #16
                              {name: "baking fruits"}, #17
                              {name: "nutmeg"}, #18
                              {name: "bananas"}, #19
                              {name: "chia seeds"}, #20
                              {name: "cruciferous vegetables"}, #21
                              {name: "eggplant"}, #22
                              {name: "onions/shallots"}, #23
                              {name: "garlic"}, #24
                              {name: "mushrooms"}, #25
                              {name: "brown sugar"}, #26
                              {name: "cinnamon"} #27
                            ])


ingredient = Ingredient.create ([ {name: "chicken", #1
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/whole-chicken.jpg",
                                   expiration: 3,
                                   category_id: 1},

                                  {name: "beef", #2
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/beef-cubes-raw.png",
                                   expiration: 3,
                                   category_id: 1},

                                  {name: "tofu", #3
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/tofu.jpg",
                                   expiration: 3,
                                   category_id: 1},

                                  {name: "fish", #4
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/fish-fillet.jpg",
                                   expiration: 4,
                                   category_id: 1},

                                  {name: "pork", #5
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/pork-tenderloin-raw.png",
                                   expiration: 3,
                                   category_id: 1},

                                  {name: "soy meat", #6
                                   ingredient_image_url: "https://www.t-nation.com/img/photos/2008/08-059-diet/image005.jpg",
                                   expiration: 7,
                                   category_id: 1},

                                  {name: "turkey", #7
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/turkey-raw-whole.jpg",
                                   expiration: 4,
                                   category_id: 1},

                                  {name: "grapeseed oil", #8
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg",
                                   expiration: 100,
                                   category_id: 2},

                                  {name: "canola oil", #9
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg",
                                   expiration: 100,
                                   category_id: 2},

                                  {name: "coconut oil", #10
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/coconut-oil.jpg",
                                   expiration: 100,
                                   category_id: 2},

                                  {name: "oil (general)", #11
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/vegetable-oil.jpg",
                                   expiration: 100,
                                   category_id: 2},

                                  {name: "butter", #12
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/butter.png",
                                   expiration: 30,
                                   category_id: 2},

                                  {name: "olive oil", #13
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/olive-oil.jpg",
                                   expiration: 100,
                                   category_id: 2},

                                  {name: "arugula", #14
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/arugula-or-rocket-salad.jpg",
                                   expiration: 8,
                                   category_id: 3},

                                  {name: "spinach", #15
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/spinach.jpg",
                                   expiration: 8,
                                   category_id: 3},

                                  {name: "cabbage", #16
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/cabbage.jpg",
                                   expiration: 7,
                                   category_id: 3},

                                  {name: "spinach", #17
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/spinach.jpg",
                                   expiration: 7,
                                   category_id: 3},

                                  {name: "lettuce", #18
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/iceberg-lettuce.jpg",
                                   expiration: 7,
                                   category_id: 3},

                                  {name: "cheddar cheese", #19
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/cheddar-cheese.jpg",
                                   expiration: 70,
                                   category_id: 4},

                                  {name: "mozzarella cheese", #20
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/mozzarella-fresh.jpg",
                                   expiration: 70,
                                   category_id: 4},

                                  {name: "pepperjack cheese", #21
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/pepper-jack-cheese.jpg",
                                   expiration: 70,
                                   category_id: 4},

                                  {name: "swiss cheese", #22
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/Swiss-cheese.jpg",
                                   expiration: 70,
                                   category_id: 4},

                                  {name: "goat cheese", #23
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/goat-cheese.jpg",
                                   expiration: 70,
                                   category_id: 5},

                                  {name: "feta cheese", #24
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/feta-cheese.jpg",
                                   expiration: 70,
                                   category_id: 5},

                                  {name: "ketchup", #25
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/ketchup.jpg",
                                   expiration: 100,
                                   category_id: 6},

                                  {name: "BBQ sauce", #26
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/barbecue-sauce.jpg",
                                   expiration: 100,
                                   category_id: 6},

                                  {name: "hoisin sauce", #27
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/dark-sauce.jpg",
                                   expiration: 90,
                                   category_id: 6},

                                  {name: "flour", #28
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/flour.png",
                                   expiration: 150,
                                   category_id: 7},

                                  {name: "cornstarch", #29
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/white-powder.jpg",
                                   expiration: 150,
                                   category_id: 7},

                                  {name: "sweet potato flour", #30
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/chickpea-flour-or-another-gluten-free-flour.jpg",
                                   expiration: 150,
                                   category_id: 7},

                                  {name: "ramen", #31
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/ramen.jpg",
                                   expiration: 150,
                                   category_id: 8},

                                  {name: "eggs", #32
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/egg.jpg",
                                   expiration: 150,
                                   category_id: 9},

                                  {name: "salt", #33
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/salt.jpg",
                                   expiration: 150,
                                   category_id: 10},

                                  {name: "pepper", #34
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/pepper.jpg",
                                   expiration: 300,
                                   category_id: 11},

                                  {name: "sesame oil", #35
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/sesame-oil.jpg",
                                   expiration: 300,
                                   category_id: 12},

                                  {name: "olives", #36
                                   ingredient_image_url: "http://www.gourmetsleuth.com/images/default-source/dictionary/spanish-olives.jpg?sfvrsn=6",
                                   expiration: 30,
                                   category_id: 36},

                                  {name: "soy sauce", #37
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/soy-sauce.jpg",
                                   expiration: 300,
                                   category_id: 14},

                                  {name: "sugar", #38
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/white-powder.jpg",
                                   expiration: 150,
                                   category_id: 15},

                                  {name: "milk", #39
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/milk.jpg",
                                   expiration: 7,
                                   category_id: 16},

                                  {name: "apples", #40
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/apple.jpg",
                                   expiration: 6,
                                   category_id: 17},

                                  {name: "peaches", #41
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/peaches.jpg",
                                   expiration: 6,
                                   category_id: 17},

                                  {name: "plums", #42
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/plum.jpg",
                                   expiration: 6,
                                   category_id: 17},

                                  {name: "pears", #43
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/pear.jpg",
                                   expiration: 7,
                                   category_id: 17},

                                  {name: "strawberries", #44
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/strawberries.jpg",
                                   expiration: 7,
                                   category_id: 17},

                                  {name: "cinnamon", #45
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/cinnamon.jpg",
                                   expiration: 356,
                                   category_id: 27},

                                  {name: "nutmeg", #46
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/nutmeg.jpg",
                                   expiration: 356,
                                   category_id: 18},

                                  {name: "bananas", #47
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/bananas.jpg",
                                   expiration: 6,
                                   category_id: 19},

                                  {name: "chia seeds", #48
                                   ingredient_image_url: "http://healthyeating.sfgate.com/DM-Resize/photos.demandstudios.com/getty/article/108/0/178864091_XS.jpg?w=442&h=442&keep_ratio=1",
                                   expiration: 300,
                                   category_id: 20},

                                  {name: "broccoli", #49
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/broccoli.jpg",
                                   expiration: 4,
                                   category_id: 21},

                                  {name: "cauliflower", #50
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/cauliflower.jpg",
                                   expiration: 4,
                                   category_id: 21},

                                  {name: "kale", #51
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/kale.jpg",
                                   expiration: 5,
                                   category_id: 21},

                                  {name: "eggplant", #52
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/eggplant.jpg",
                                   expiration: 6,
                                   category_id: 22},

                                  {name: "onions", #53
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/white-onion.jpg",
                                   expiration: 9,
                                   category_id: 23},

                                  {name: "shallots", #54
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/shallots.jpg",
                                   expiration: 9,
                                   category_id: 23},

                                  {name: "garlic", #55
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/garlic.jpg",
                                   expiration: 11,
                                   category_id: 24},

                                  {name: "mushrooms", #56
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/mushrooms.jpg",
                                   expiration: 4,
                                   category_id: 25},

                                  {name: "brown sugar", #57
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/brown-sugar-dark.jpg",
                                   expiration: 300,
                                   category_id: 26}

                                ])

recipe = Recipe.create ([ {name: "Ramen Burger", #1
                           image_url: "http://images.media-allrecipes.com/userphotos/250x250/1038666.jpg",
                           user_id: 1,
                           total_time: "20 min",
                           calories_per_serving: 673,
                           list_ingredients: "2 (3 ounce) packages instant ramen noodles | 2 large eggs | salt and ground black pepper to taste | 3/4 pound lean ground beef | 1 tablespoon soy sauce, 1 teaspoon sesame oil | 3 tablespoons vegetable oil (divided) | 3 slices American cheese | 1/4 cup ketchup, 2 tablespoons chile-garlic sauce (such as Sriracha) | 1 1/2 cups arugula | 3 large eggs",
                           instructions:   "1)Bring a pot of  water to a boil; add ramen noodles. about 3 minutes. Drain. Allow noodles to cool slightly. | 2)Beat 2 eggs in a bowl; season with salt and pepper. Stir noodles into eggs until evenly coated. Divide noodles into 6 burger-size ramekins or bowls. Place a sheet of plastic wrap directly over noodles and stack another bowl on top to flatten noodles. Refrigerate until firm, about 20 minutes. | 3)Mix beef, soy sauce, and sesame oil in a bowl. Divide beef mixture into three equal portions and shape into patties. | 4)Heat about 1 tablespoon vegetable oil in a large skillet over medium-high heat. Invert each ramen bowl, gently tapping the bottom of the bowl until ramen loosens, careful to maintain bun shape. | 5)Fry each ramen bun, without moving noodles, in hot oil until golden brown, about 3 minutes. Flip each bun and continue frying until crisp, 3 to 5 minutes more. Ramen bun should be crispy on one side and slightly softer on the other. Transfer buns to large plate with the crispy side up. | 6)Heat about 1 tablespoon vegetable oil in the same skillet used to fry ramen over medium heat. Cook beef patties until burgers are lightly pink in the center, 3 to 5 minute per side. An instant-read thermometer inserted into the center should read 140 degrees F (60 degrees C). Arrange a slice of American cheese over each burger and continue to cook until melted, about 1 minute more. | 7)Mix ketchup and chile-garlic sauce in a small bowl; spread mixture over the crispy side of each ramen bun. Divide arugula over 3 ramen buns. Place burgers over arugula. | 8)Heat about 1 teaspoon oil in a small skillet over medium-high heat; fry remaining eggs one at a time, adding more oil as needed, until yolk is almost firm, about 1 minutes per side. Place egg over patty and top with remaining bun.",
                           source: "http://allrecipes.com/recipe/234111/ramen-burger/print/?recipeType=Recipe&servings=3",
                           likes: 0,
                           gluten_free: false,
                           paleo: false,
                           vegetarian: false,
                            vegan: false},

                          {name: "Cheese Omelette", #2
                           image_url: "http://cdn-image.myrecipes.com/sites/default/files/styles/300x300/public/image/recipes/su/05/04/cheese-omelet-su-1036263-x.jpg?itok=-WRlIakr",
                           user_id: 2,
                           total_time: "5 minutes",
                           calories_per_serving: 520,
                           list_ingredients: "3 large eggs | 1 tablespoon whipping cream or milk | 1/8 teaspoon salt | 1 tablespoon butter | 1/3 cup shredded cheddar or Swiss cheese",
                           instructions: "1) In a bowl, whisk eggs, cream, and salt just until blended; do not overbeat. | 2) Heat an 8-inch nonstick frying pan with sloping sides over medium-high heat for 1 minute. When hot, add butter and tilt pan to coat evenly. When butter is foamy, pour egg mixture into pan and swirl to spread it out to edges of pan. | 3) As the egg mixture begins to set on the bottom, lift one edge with a heatproof flexible spatula and tilt the pan to let the uncooked mixture on top flow underneath. Continue lifting edges of omelet and tilting pan, working your way around all sides, until no more uncooked egg mixture will flow underneath and the top is just a little moist, about 2 minutes total. | 4) Sprinkle cheese either in a strip down the middle, if you plan on folding the omelet into thirds, or over one half, if you're folding it in half. Loosen the omelet with the spatula. For a third-fold, fold one edge over strip of cheese in the middle; tip pan to slide omelet, folded edge first, onto a warm plate, flipping remaining edge over filling as omelet leaves pan. For a half-fold, tip pan to slide omelet, cheese side first, onto warm plate; flip bare half over cheese as omelet leaves pan. Folding a plain cheese omelet: | 5)As egg mixture sets on pan bottom, lift edge with a spatula and tilt pan to let uncooked egg flow underneath. Continue the process, working around pan sides, until no uncooked egg mixture flows underneath and top is still moist. | 6)Sprinkle cheese in a strip down the center of the omelet, in line with the pan handle. With the spatula, fold one side over the strip of cheese. | 7)Run spatula under omelet to loosen, and tip pan to slide omelet, folded edge first, onto a warm plate. Flip remaining edge over filling as omelet leaves pan.",
                           source: "http://www.myrecipes.com/recipe/folded-cheese-omelet",
                           likes: 0,
                           gluten_free: true,
                           paleo: true,
                           vegetarian: true,
                           vegan: false},

                          {name: "Ramen with Eggs", #4
                           image_url: "http://yestoyolks.com/wp-content/uploads/2014/08/IMG_2718.jpg",
                           user_id: 1,
                           total_time: "30 min",
                           calories_per_serving: 450,
                           list_ingredients: "1 package ramen | 1 egg | chives (optional)",
                           instructions: "1)Follow the directions for regular Ramen. Bring water to a boil, add noodles and turn down heat. | 2)Now here comes the fun part. Beat an egg with a fork in a seperate bowl. | 3)As the noodles are cooking Slowly pour the egg into the mix like you would if you were making regular egg drop. | 4)Stir it up.",
                           likes: 0,
                           gluten_free: false,
                           paleo: false,
                           vegetarian: true,
                           vegan: false},

                          {name: "Cheese Fondue", #5
                           image_url: "http://assets.epicurious.com/photos/560de51ef9a84192308a7a9d/master/pass/231492.jpg",
                           user_id: 2,
                           cook_time: "",
                           prep_time: "",
                           total_time: "25 min",
                           calories_per_serving: 247,
                           list_ingredients: "1 garlic clove | 1 1/2 cups milk | 1 tablespoon cornstarch | 2 teaspoons kirsch (optional) | 1 pound or 2 cups cheese",
                           instructions: "1) Rub inside of a 4-quart heavy pot with cut sides of garlic, then discard garlic. Add wine to pot and bring just to a simmer over moderate heat. | 2) Stir together cornstarch and kirsch (if using; otherwise, use water or wine) in a cup. | 3) Gradually add cheese to pot and cook, stirring constantly in a zigzag pattern (not a circular motion) to prevent cheese from balling up, until cheese is just melted and creamy (do not let boil). Stir cornstarch mixture again and stir into fondue. Bring fondue to a simmer and cook, stirring, until thickened, 5 to 8 minutes. Transfer to fondue pot set over a flame.",
                           likes: 0,
                           gluten_free: true,
                           paleo: false,
                           vegetarian: true,
                           vegan: false}
                       ])

comment = Comment.create ([
                          {comment_text: "The Perfect Junk Food. I approve.",
                           rating: 4,
                           recommended: true,
                           user_id: 3,
                           recipe_id: 1},

                          {comment_text: "Where's the Cheese???!!!",
                           rating: 3,
                           recommended: false,
                           user_id: 2,
                           recipe_id: 1},

                          {comment_text: "The more cheese, the merrier.",
                           rating: 5,
                           recommended: true,
                           user_id: 1,
                           recipe_id: 3}

                         ])


recipe1 = Recipe.find(1)
recipe1_ingredients = Ingredient.find(32, 33, 34, 2, 37, 35, 11, 19, 25, 14)
recipe1.ingredients << recipe1_ingredients

recipe2 = Recipe.find(2)
recipe2_ingredients = Ingredient.find(32, 39, 33, 12, 21)
recipe2.ingredients << recipe2_ingredients

recipe3 = Recipe.find(3)
recipe3_ingredients = Ingredient.find(31, 32)
recipe3.ingredients << recipe3_ingredients

recipe4 = Recipe.find(4)
recipe4_ingredients = Ingredient.find(22, 39)
recipe4.ingredients << recipe4_ingredients

#Populate User Fridge with Ingredients

user1 = User.find(1) #Kanyee Talot
user1_fridge = Ingredient.find(32, 29, 33, 12, 21, 51, 52, 53)
user1.ingredients << user1_fridge

user2 = User.find(2) #Mickey Mouse
user2_fridge = Ingredient.find(22, 20, 21, 19, 23, 24)
user2.ingredients << user2_fridge

user3 = User.find(3) #Liz
user3_fridge = Ingredient.find(32, 33, 34, 2, 37, 35, 11, 19, 25, 14, 30, 38, 40, 47)
user3.ingredients << user3_fridge



