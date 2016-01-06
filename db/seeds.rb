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
                       handle: "uknowit",
                       email: "Foodie@greatfoods.com",
                       password: "123",
                       password_confirmation: "123",
                       recipe_id: 1,
                       my_fridge: "The Vault",
                       profile_image_url: "",
                       super_chef: false
                      },

                      {first_name: "",
                       last_name: "",
                       handle: "",
                       email: "",
                       password: "123",
                       password_confirmation: "123",
                       my_fridge: "The Vault",
                       profile_image_url: "",
                       super_chef: false
                      },

                      {first_name: "",
                       last_name: "",
                       handle: "",
                       email: "",
                       password: "",
                       password_confirmation: "",
                       my_fridge: "",
                       profile_image_url: "",
                       super_chef: true
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
                              {name: "baking fruits"} #17
                              {name: "nutmeg"}, #18
                              {name: "bananas"}, #19
                              {name: "chia seeds"}, #20
                              {name: "cruciferous vegetables"}, #21
                              {name: "eggplant"}, #22
                              {name: "onions/shallots"}, #23
                              {name: "garlic"}, #24
                              {name: "mushrooms"}, #25
                              {name: "brown sugar"} #26
                              {name: "cinnamon"}, #27
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
                                   category_id: 22}

                                  {name: "onions", #53
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/white-onion.jpg",
                                   expiration: 9,
                                   category_id: 23}

                                  {name: "shallots", #54
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/shallots.jpg",
                                   expiration: 9,
                                   category_id: 23}

                                  {name: "garlic", #55
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/garlic.jpg",
                                   expiration: 11,
                                   category_id: 24}

                                  {name: "mushrooms", #56
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/mushrooms.jpg",
                                   expiration: 4,
                                   category_id: 25}

                                  {name: "brown sugar", #57
                                   ingredient_image_url: "https://spoonacular.com/cdn/ingredients_100x100/brown-sugar-dark.jpg",
                                   expiration: 300,
                                   category_id: 26}

                                ])

