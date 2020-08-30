# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Tag.destroy_all
RecipeTag.destroy_all
RecipeIngredient.destroy_all
Rating.destroy_all
Recipe.destroy_all
ListRecipe.destroy_all
List.destroy_all
Ingredient.destroy_all

10.times do 
    User.create(
        username: Faker::Name.name,
        password: "password1"
    )
end


Recipe.create(
    title: "Stuffed Bell Peppers",
    time: (15..60).to_a.sample,
    description: Faker::Lorem.sentences(number: 3),
    steps: Faker::Lorem.sentences(number: 3),
    img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2016/2/26/2/WU1307H_stuffed-peppers_s4x3.jpg.rend.hgtvcom.966.725.suffix/1463506005081.jpeg"
)

Recipe.create(
    title: "Garlic Roasted Potatoes",
    time: (15..60).to_a.sample,
    description: Faker::Lorem.sentences(number: 3),
    steps: Faker::Lorem.sentences(number: 3),
    img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2003/9/29/0/ig1a07_roasted_potatoes.jpg.rend.hgtvcom.966.725.suffix/1446840363593.jpeg"
)

Recipe.create(
    title: "French Toast",
    time: (15..60).to_a.sample,
    description: Faker::Lorem.sentences(number: 3),
    steps: Faker::Lorem.sentences(number: 3),
    img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2008/3/26/0/IE0309_French-Toast.jpg.rend.hgtvcom.966.725.suffix/1431730431340.jpeg"
)

Recipe.create(
    title: "Oven-Baked Salmon",
    time: (15..60).to_a.sample,
    description: Faker::Lorem.sentences(number: 3),
    steps: Faker::Lorem.sentences(number: 3),
    img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/7/26/1/CN1B01_oven-baked-salmon_s4x3.jpg.rend.hgtvcom.966.725.suffix/1382545141944.jpeg"
)

Recipe.create(
    title: "Perfectly Grilled Corn on the Cob",
    time: 95,
    description: "
        8 ears corn

        Kosher salt
        
        BBQ Butter, recipe follows
        
        Herb Butter, recipe follows
        
        BBQ Butter:
        2 tablespoons canola oil
        
        1/2 small red onion, chopped
        
        2 cloves garlic, chopped
        
        2 teaspoons Spanish paprika
        
        1/2 teaspoon cayenne powder
        
        1 teaspoon toasted cumin seeds
        
        1 tablespoon ancho chili powder
        
        1/2 cup water
        
        1 1/2 sticks unsalted butter, slightly softened
        
        1 teaspoon Worcestershire sauce
        
        Salt and freshly ground black pepper
        
        Herb Butter:
        2 sticks unsalted butter, at room temperature
        
        1/4 cup chopped fresh herbs (basil, chives or tarragon)
        
        1 teaspoon kosher salt
        
        Freshly ground black pepper
    ",
    steps: "
        1. Heat the grill to medium.

        2. Pull the outer husks down the ear to the base. Strip away the silk from each ear of corn by hand. Fold husks back into place, and place the ears of corn in a large bowl of cold water with 1 tablespoon of salt for 10 minutes.
        
        3. Remove corn from water and shake off excess. Place the corn on the grill, close the cover and grill for 15 to 20 minutes, turning every 5 minutes, or until kernels are tender when pierced with a paring knife. Remove the husks and eat on the cob or remove the kernels. Serve with the BBQ Butter and/or Herb Butter. Spread over the corn while hot.
        
        BBQ Butter:
        Heat the oil in a medium saute pan over high heat until almost smoking. Add the onion and cook until soft, 2 to 3 minutes. Add the garlic and cook for 30 seconds. Add the paprika, cayenne, cumin and ancho powder and cook for 1 minute. Add 1/2 cup of water and cook until the mixture becomes thickened and the water reduces. Let cool slightly.
        Place the butter in a food processor, add the spice mixture and Worcestershire sauce and process until smooth. Season with salt and pepper, scrape the mixture into a small bowl, cover and refrigerate for at least 30 minutes to allow the flavors to meld. Bring to room temperature before serving.
        
        Herb Butter:
        Combine in a food processor and process until smooth.
    ",
    img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2008/6/20/0/GrilledCornCob.jpg.rend.hgtvcom.966.725.suffix/1432468179432.jpeg"
)

Recipe.create(
    title: "No-Churn Chocolate Ice Cream",
    time: (15..60).to_a.sample,
    description: Faker::Lorem.sentences(number: 3),
    steps: Faker::Lorem.sentences(number: 3),
    img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2016/4/11/1/FNK_No-Churn-Chocolate-Ice-Cream_s4x3.jpg.rend.hgtvcom.966.725.suffix/1460463969594.jpeg"
)

10.times do
    rating = Rating.new
    rating.number = (0..5).to_a.sample
    rating.user = User.all.sample
    rating.recipe = Recipe.all.sample
    rating.save
end

10.times do
    list = List.new
    list.title = Faker::Food.dish
    list.user = User.all.sample
    list.save
end

10.times do
    list_recipe = ListRecipe.new
    list_recipe.list = List.all.sample
    list_recipe.recipe = Recipe.all.sample
    list_recipe.save
end

tag_names = [
    "meat",
    "vegetables",
    "dairy",
    "grain",
    "gluten",
    "poultry",
    "fish",
    "vegan",
    "vegetarian",
    "pasta",
    "seafood",
    "shellfish",
    "soup",
    "salad",
    "beef",
    "pork",
    "chicken",
    "cheese",
    "baked",
    "fried",
    "appetizer",
    "breakfast",
    "brunch",
    "lunch",
    "dinner",
    "sandwich",
    "grilled",
    "healthy",
    "dessert",
    "asian",
    "indian",
    "tex-mex",
    "american",
    "south american",
    "italian",
    "jamaican",
    "german",
    "french",
    "greek",
    "holiday",
    "lamb",
    "duck",
    "mushrooms",
    "nuts",
    "sweet",
    "spicy",
    "sour",
]

tag_names.uniq.each do |name|
    Tag.create(name: name)
end

def find_tag(name)
    if Tag.all.include?(Tag.all.find_by(name: name))
        Tag.all.select{|tag| tag.name == name}[0]
    else
        Tag.create(name: name)
        Tag.all.select{|tag| tag.name == name}[0]
    end
end

def find_recipe(title)
    Recipe.all.select{|recipe| recipe.title == title}[0]
end

def create_rt(title, name)
    recipe_tag = RecipeTag.new
    recipe_tag.recipe = find_recipe(title)
    recipe_tag.tag = find_tag(name)
    recipe_tag.save
end

create_rt("Stuffed Bell Peppers", "meat")
create_rt("Stuffed Bell Peppers", "vegetables")
create_rt("Stuffed Bell Peppers", "baked")
create_rt("Stuffed Bell Peppers", "italian")
create_rt("Stuffed Bell Peppers", "dinner")



create_rt("Perfectly Grilled Corn on the Cob", "grilled")
create_rt("Perfectly Grilled Corn on the Cob", "vegetarian")
create_rt("Perfectly Grilled Corn on the Cob", "salty")
create_rt("Perfectly Grilled Corn on the Cob", "vegetables")
create_rt("Perfectly Grilled Corn on the Cob", "dinner")
create_rt("Perfectly Grilled Corn on the Cob", "easy")


ingredient_names = [
    # A
    "acai",
    "acorn aquash",
    "alcohol",
    "alfalfa aprouts",
    "allspice",
    "almond butter",
    "almond flour",
    "almond milk",
    "almond paste",
    "almonds",
    "amaranth",
    "american cheese",
    "anise",
    "aperol",
    "apple",
    "apple cider",
    "apple cider vinegar",
    "applesauce",
    "apricots",
    "artichoke",
    "arugula",
    "asparagus",
    "avocado",
    "avocado oil",
    # B
    "bacon",
    "baguette",
    "balsamic",
    "banana",
    "barley",
    "basil",
    "bbq",
    "beans", 
    "beef",
    "beet greens", 
    "beets", 
    "bell pepper",
    "black beans", 
    "blackberry", 
    "blueberry",
    "bok choy",
    "bourbon",
    "bread",
    "breadcrumbs",
    "brie",
    "broccoli",
    "broiler",
    "brown rice syrup",
    "brown sugar",
    "brussel sprouts",
    "bulgur",
    "burger",
    "butter",
    "buttermilk",
    "butternut squash",
    # C
    "cabbage",
    "cacao nibs",
    "cake",
    "capers",
    "caramel",
    "cardamom",
    "carrot",
    "cashew butter",
    "cashews",
    "cauliflower",
    "cayenne pepper",
    "celery",
    "cereal",
    "chai",
    "champagne",
    "cheddar",
    "cherry",
    "cherry tomato",
    "chestnuts",
    "chia",
    "chicken",
    "chicken breast",
    "chicken thighs",
    "chicken wings",
    "chickpeas",
    "chile",
    "chili",
    "chili powder",
    "chipotle",
    "chipotle powder",
    "chives",
    "chocolate",
    "chocolate chips",
    "cider",
    "cilantro",
    "cinnamon",
    "cloves",
    "cocoa",
    "coconut",
    "coconut milk",
    "coconut oil",
    "coconut sugar",
    "coconut water",
    "cod",
    "coffee",
    "collard greens",
    "cookie dough",
    "coriander",
    "corn",
    "cornmeal",
    "cornstarch",
    "couscous",
    "crackers",
    "cranberry",
    "cream cheese",
    "croutons",
    "cucumber",
    "cumin",
    "curry powder",
    # D
    "dill",
    "dates",
    # E
    "edamame",
    "egg",
    "eggplant",
    "enchilada",
    "espresso",
    "espresso powder", 
    # F
    "farro",
    "feta",
    "figs",
    "fish",
    "fish sauce",
    "flatbread",
    "flax",
    "flour",
    "frosting",
    "fruit",
    # G
    "garlic",
    "garlic powder",
    "garlic scapes",
    "ginger",
    "goat cheese",
    "goji berries",
    "granola",
    "grapefruit", 
    "grapes",
    "grape jelly",
    "green beans",
    "green chile", 
    "green onion", 
    "guacamole",
    # H
    "hazelnut",
    "hemp",
    "hemp milk",
    "herbs",
    "honey",
    "horseradish",
    "hot sauce",
    "hummus",
    # I
    "icing",
    "ice cream",
    # J
    "jalapeno",
    "jam",
    "juice",
    # K
    "kale",
    "kidney beans",
    # L
    "lamb",
    "lasagna",
    "leeks",
    "lemon",
    "lentils",
    "lettuce",
    # M
    "macaroon",    
    "mango",   
    "maple syrup",     
    "marinara",    
    "marionberry", 
    "marmalade",   
    "marshmallow",
    "mayonnaise",
    "meatballs",
    "meyer lemon",
    "milk",
    "millet",
    "mint",
    "miso",
    "molasses",
    "mozzarella",
    "mushrooms",
    "mustard",
    # N
    "nectarines",
    "nut butter",
    "nutmeg",
    "nutritional yeast",
    # O
    "oats",
    "oil",
    "olive oil",
    "olives",
    "onion",
    "onion powder",
    "orange",
    "orange juice",
    "oregano",
    #P
    "pancake batter",
    "papaya",
    "paprika",
    "parmesan",
    "parsley",
    "parsnips",
    "pasta",
    "peach",
    "peanut butter",
    "peanut flour",
    "peanuts",
    "pear",
    "peas",
    "pecan",
    "pepitas",
    "pepper",
    "pepperoncinis",
    "persimmon",
    "pesto",
    "pickles",
    "pie",
    "pine nuts",
    "pineapple",
    "pinto beans",
    "pistachio",
    "pita",
    "pizza",
    "plantain",
    "plum",
    "poblano pepper",
    "polenta",
    "pomegranate",
    "popcorn",
    "poppy seed",
    "portobello",
    "potato",
    "potstickers",
    "powdered sugar",
    "pretzel",
    "prosciutto",
    "protein powder",
    "pudding",
    "puff pastry",
    "pumpkin",
    "pumpkin seeds",
    # Q
    "quinoa",
    # R
    "radish",
    "raisins",
    "ramen",
    "raspberry",
    "red lentils",
    "red onion",
    "red pepper",
    "rhubarb",
    "rice",
    "rice bran oil",
    "rice milk",
    "rice noodles",
    "ricotta",
    "roasted red peppers",
    "rockfish",
    "romaine",
    "rosemary",
    "rum",
    "rutabaga",
    # S
    "salad", 
    "salami",
    "salmon", 
    "salsa",
    "salt",
    "sangria",
    "sausage",
    "scallops",
    "sea salt", 
    "sesame",
    "shallot",
    "short ribs",
    "shortbread",
    "shrimp",
    "snap peas",
    "snow peas",
    "soy milk",
    "soy sauce", 
    "spaghetti squash",
    "sparkling water",
    "spinach",
    "split peas",
    "spring",
    "spring onion",
    "squash", 
    "sriracha",
    "steak",
    "steel-cut oats",
    "strawberries",
    "stuffing",
    "sugar",
    "sundried tomato",
    "sunflower seeds",
    "sweet potato",
    "swiss chard",
    "syrup",
    # T
    "tahini",
    "tart",
    "tea",
    "tempeh",
    "tequila",
    "thyme",
    "tofu",
    "tomatillo",
    "tomato",
    "tomato paste",
    "tortilla",
    "trail mix",
    "triple sec",
    "trout",
    "tuna",
    "turkey",
    "turmeric",
    "turnip",
    "turnip greens",
    # U
    "umami seasoning",
    # V
    "vanilla",
    "vinaigrette",
    "vinegar",
    # W
    "walnut",
    "watermelon",
    "wheatberry",
    "whipped cream",
    "whiskey",
    "white beans",
    "wild blueberries",
    "wild rice",
    "wine",
    # Y
    "yogurt",
    # Z
    "zucchini",
    "zucchini noodles"
]

ingredient_names.uniq.each do |name|
    Ingredient.create(name: name)
end

def find_ingredient(name)
    if Ingredient.all.include?(Ingredient.all.find_by(name: name))
        Ingredient.all.select{|ingredient| ingredient.name == name}[0]
    else
        Ingredient.create(name: name)
        Ingredient.all.select{|ingredient| ingredient.name == name}[0]
    end
end

def create_ri(title, name)
    recipe_ingredient = RecipeIngredient.new
    recipe_ingredient.recipe = find_recipe(title)
    recipe_ingredient.ingredient = find_ingredient(name)
    recipe_ingredient.save
end

create_ri("Perfectly Grilled Corn on the Cob", "salt")
create_ri("Perfectly Grilled Corn on the Cob", "butter")
create_ri("Perfectly Grilled Corn on the Cob", "canola oil")
create_ri("Perfectly Grilled Corn on the Cob", "red onion")
create_ri("Perfectly Grilled Corn on the Cob", "garlic")
create_ri("Perfectly Grilled Corn on the Cob", "paprika")
create_ri("Perfectly Grilled Corn on the Cob", "cayenne powder")
create_ri("Perfectly Grilled Corn on the Cob", "cumin seeds")
create_ri("Perfectly Grilled Corn on the Cob", "chili powder")
create_ri("Perfectly Grilled Corn on the Cob", "water")
create_ri("Perfectly Grilled Corn on the Cob", "butter")
create_ri("Perfectly Grilled Corn on the Cob", "worcestershire sauce")
create_ri("Perfectly Grilled Corn on the Cob", "black pepper")
create_ri("Perfectly Grilled Corn on the Cob", "herbs")


