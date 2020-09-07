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
    time: 95,
    description: [
        "6 bell peppers, any color",

        "4 tablespoons olive oil, plus more for drizzling", 
        
        "8 ounces lean ground beef", 
        
        "Kosher salt and freshly ground black pepper",
        
        "1 onion, finely diced",
        
        "2 cloves garlic, chopped",
        
        "1 medium zucchini, finely diced", 
        
        "4 Roma tomatoes, seeded and finely diced", 
        
        "Red pepper flakes, as needed", 
        
        "1 cup cooked long-grain and wild rice", 
        
        "1 1/2 cups grated pepper Jack cheese", 
    ],
    steps: [
        "1. Preheat the oven to 350 degrees F.",
        "2. Cut the tops off the peppers.",
        "3. Remove and discard the stems, then finely chop the tops; set aside.",
        "4. Scoop out the seeds and as much of the membrane as you can.", 
        "5. Place the peppers cut-side up in a baking dish just large enough to hold them upright.",
        "6. Heat 2 tablespoons of the olive oil in a large skillet over medium-high heat.",
        "7. Add the beef, season with salt and pepper and cook, breaking up the lumps, until the meat is cooked through and just beginning to brown, 8 to 10 minutes.",
        "8. Remove to a paper towel-lined plate to get rid of the fat.",
        "9. Wipe out the skillet and add the remaining 2 tablespoons olive oil.",
        "10. Add the onions and chopped peppers and cook until beginning to soften, 3 to 4 minutes.",
        "11. Add the garlic and zucchini and cook for another minute.",
        "12. Add the tomatoes and season with salt and a pinch or 2 of red pepper flakes.",
        "13. Cook until everything is heated through, then stir in the beef and rice. Taste and adjust the seasoning.",
        "14. Stir in 1 cup of the cheese.",
        "15. Fill the peppers with the rice mixture and top each with a sprinkle of the remaining 1/2 cup cheese.",
        "16. Pour a small amount of water into the bottom of the baking dish and drizzle the peppers with a little olive oil.",
        "17. Cover with foil and bake for 30 minutes.",
        "18. Uncover and bake until the peppers are soft and the cheese is melted and lightly browned, another 15 to 20 minutes."
    ],
    img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2016/2/26/2/WU1307H_stuffed-peppers_s4x3.jpg.rend.hgtvcom.966.725.suffix/1463506005081.jpeg"
)

Recipe.create(
    title: "Garlic Roasted Potatoes",
    time: 70,
    description: [
        "3 pounds small red or white potatoes",

        "1/4 cup good olive oil",

        "1 1/2 teaspoons kosher salt",

        "1 teaspoon freshly ground black pepper",

        "2 tablespoons minced garlic (6 cloves)",

        "2 tablespoons minced fresh parsley"
    ],
    steps: [
        "1. Preheat the oven to 400 degrees F.",
        "2. Cut the potatoes in half or quarters and place in a bowl with the olive oil, salt, pepper, and garlic; toss until the potatoes are well coated. Transfer the potatoes to a sheet pan and spread out into 1 layer. Roast in the oven for 45 minutes to 1 hour or until browned and crisp. Flip twice with a spatula during cooking in order to ensure even browning.",
        "3. Remove the potatoes from the oven, toss with parsley, season to taste, and serve hot."
    ],
    img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2003/9/29/0/ig1a07_roasted_potatoes.jpg.rend.hgtvcom.966.725.suffix/1446840363593.jpeg"
)

Recipe.create(
    title: "French Toast",
    time: 30,
    description: [
        "1 teaspoon ground cinnamon",

        "1/4 teaspoon ground nutmeg",

        "2 tablespoons sugar",

        "4 tablespoons butter",

        "4 eggs",

        "1/4 cup milk",

        "1/2 teaspoon vanilla extract",

        "8 slices challah, brioche, or white bread",

        "1/2 cup maple syrup, warmed"
    ],
    steps: [
        "1. In a small bowl, combine cinnamon, nutmeg, and sugar and set aside briefly.",
        "2. In a 10-inch or 12-inch skillet, melt butter over medium heat. Whisk together cinnamon mixture, eggs, milk, and vanilla and pour into a shallow container such as a pie plate. Dip bread in egg mixture. Fry slices until golden brown, then flip to cook the other side. Serve with syrup."
    ],
    img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2008/3/26/0/IE0309_French-Toast.jpg.rend.hgtvcom.966.725.suffix/1431730431340.jpeg"
)

Recipe.create(
    title: "Oven-Baked Salmon",
    time: 20,
    description: [
        "12 ounce salmon fillet, cut into 4 pieces",

        "Coarse-grained salt",

        "Freshly ground black pepper",

        "Toasted Almond Parsley Salsa, for serving",

        "Baked squash, for serving, optional",

        "Toasted Almond Parsley Salad:",
        "1 shallot",

        "1 tablespoons red wine vinegar",

        "Coarse grain salt",

        "2 tablespoons capers, rinsed",

        "1 cup fresh flat-leaf parsley",

        "1/2 cup toasted almonds",

        "Extra-virgin olive oil"
    ],
    steps: [
        "1. Preheat the oven to 450 degrees F.",
        "2. Season salmon with salt and pepper. Place salmon, skin side down, on a non-stick baking sheet or in a non-stick pan with an oven-proof handle. Bake until salmon is cooked through, about 12 to 15 minutes. Serve with the Toasted Almond Parsley Salad and squash, if desired.",
        "Toasted Almond Parsley Salad:",
        "3. Mince the shallot and add to a small bowl. Pour the vinegar over the shallots and add a pinch of salt. Let sit for 30 minutes.",
        "4. Roughly chop the capers, parsley and almonds and add to the shallots. Add the olive oil, tasting as you go. Mix again and adjust the seasonings."
    ],
    img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/7/26/1/CN1B01_oven-baked-salmon_s4x3.jpg.rend.hgtvcom.966.725.suffix/1382545141944.jpeg"
)

Recipe.create(
    title: "Perfectly Grilled Corn on the Cob",
    time: 95,
    description: [
        "8 ears corn",

        "Kosher salt",
        
        "BBQ Butter, recipe follows",
        
        "Herb Butter, recipe follows",
        
        "BBQ Butter:",
        "2 tablespoons canola oil",
        
        "1/2 small red onion, chopped",
        
        "2 cloves garlic, chopped",
        
        "2 teaspoons Spanish paprika",
        
        "1/2 teaspoon cayenne powder",
        
        "1 teaspoon toasted cumin seeds",
        
        "1 tablespoon ancho chili powder",
        
        "1/2 cup water",
        
        "1 1/2 sticks unsalted butter, slightly softened",
        
        "1 teaspoon Worcestershire sauce",
        
        "Salt and freshly ground black pepper",
        
        "Herb Butter:",
        "2 sticks unsalted butter, at room temperature",
        
        "1/4 cup chopped fresh herbs (basil, chives or tarragon)",
        
        "1 teaspoon kosher salt",
        
        "Freshly ground black pepper"
    ],
    steps: [
        "1. Heat the grill to medium.",

        "2. Pull the outer husks down the ear to the base. Strip away the silk from each ear of corn by hand. Fold husks back into place, and place the ears of corn in a large bowl of cold water with 1 tablespoon of salt for 10 minutes.",
        
        "3. Remove corn from water and shake off excess. Place the corn on the grill, close the cover and grill for 15 to 20 minutes, turning every 5 minutes, or until kernels are tender when pierced with a paring knife. Remove the husks and eat on the cob or remove the kernels. Serve with the BBQ Butter and/or Herb Butter. Spread over the corn while hot.",
        
        "BBQ Butter:",
        "Heat the oil in a medium saute pan over high heat until almost smoking. Add the onion and cook until soft, 2 to 3 minutes. Add the garlic and cook for 30 seconds. Add the paprika, cayenne, cumin and ancho powder and cook for 1 minute. Add 1/2 cup of water and cook until the mixture becomes thickened and the water reduces. Let cool slightly.",
        "Place the butter in a food processor, add the spice mixture and Worcestershire sauce and process until smooth. Season with salt and pepper, scrape the mixture into a small bowl, cover and refrigerate for at least 30 minutes to allow the flavors to meld. Bring to room temperature before serving.",
        
        "Herb Butter:",
        "Combine in a food processor and process until smooth."
    ],
    img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2008/6/20/0/GrilledCornCob.jpg.rend.hgtvcom.966.725.suffix/1432468179432.jpeg"
)

Recipe.create(
    title: "No-Churn Chocolate Ice Cream",
    time: 310,
    description: [
        "Ice Cream:",
        "One 14-ounce can sweetened condensed milk",

        "1/2 cup unsweetened natural cocoa powder",

        "1 teaspoon pure vanilla extract",

        "Pinch fine salt",

        "2 cups heavy cream, cold",

        "Mix-in options:",
        "Rocky Road: 1/2 cup chocolate-covered almonds, crushed, and 2/3 cup mini marshmallows",

        "Malted: two 5-ounce boxes chocolate malted milk balls, halved or coarsely chopped",
    ],
    steps: [
        "Special equipment: A 9-by-5-by-3-inch metal loaf pan, chilled",
        "1. For the ice cream: Whisk together the condensed milk, cocoa powder, vanilla and salt in a large bowl. The mixture will become very thick; set aside.",
        "2. Whip the cream with a mixer on medium-high speed until firm peaks form, about 2 minutes. Fold about 1 cup of the whipped cream into the cocoa mixture with a rubber spatula until combined, then fold the lightened mixture into the whipped cream until well blended. Pour into a chilled 9-by-5-by-3-inch metal loaf pan, and freeze, covered, until thick and creamy, like soft-serve, about 2 hours. Swirl in any desired mix-ins with a spoon. Continue to freeze, covered, until solid and scoopable, about 3 hours more."
    ],
    img_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2016/4/11/1/FNK_No-Churn-Chocolate-Ice-Cream_s4x3.jpg.rend.hgtvcom.966.725.suffix/1460463969594.jpeg"
)

10.times do
    rating = Rating.new
    rating.number = (1..6).to_a.sample
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

create_rt("Garlic Roasted Potatoes", "baked")
        create_rt("Garlic Roasted Potatoes", "dinner")
        create_rt("Garlic Roasted Potatoes", "vegetarian")
        create_rt("Garlic Roasted Potatoes", "vegan")
        create_rt("Garlic Roasted Potatoes", "healthy")
        create_rt("Garlic Roasted Potatoes", "easy")
      
create_rt("French Toast", "breakfast")
        create_rt("French Toast", "easy")
        create_rt("French Toast", "brunch")
        create_rt("French Toast", "sweet")

create_rt("Oven-Baked Salmon", "dinner")
        create_rt("Oven-Baked Salmon", "lunch")
        create_rt("Oven-Baked Salmon", "easy")
        create_rt("Oven-Baked Salmon", "fast")
        create_rt("Oven-Baked Salmon", "healthy")
        create_rt("Oven-Baked Salmon", "seafood")
        create_rt("Oven-Baked Salmon", "fish")

create_rt("Perfectly Grilled Corn on the Cob", "grilled")
        create_rt("Perfectly Grilled Corn on the Cob", "vegetarian")
        create_rt("Perfectly Grilled Corn on the Cob", "salty")
        create_rt("Perfectly Grilled Corn on the Cob", "vegetables")
        create_rt("Perfectly Grilled Corn on the Cob", "dinner")
        create_rt("Perfectly Grilled Corn on the Cob", "easy")

create_rt("No-Churn Chocolate Ice Cream", "dessert")
        create_rt("No-Churn Chocolate Ice Cream", "dairy")
        create_rt("No-Churn Chocolate Ice Cream", "sweet")
        create_rt("No-Churn Chocolate Ice Cream", "frozen")

# 

ingredient_names = [
    # A
    "acai",
    "acorn squash",
    "alcohol",
    "alfalfa sprouts",
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

create_ri("Stuffed Bell Peppers", "bell pepper")
        create_ri("Stuffed Bell Peppers", "olive oil")
        create_ri("Stuffed Bell Peppers", "ground beef")
        create_ri("Stuffed Bell Peppers", "black pepper")
        create_ri("Stuffed Bell Peppers", "onion")
        create_ri("Stuffed Bell Peppers", "garlic")
        create_ri("Stuffed Bell Peppers", "zucchini")
        create_ri("Stuffed Bell Peppers", "tomato")
        create_ri("Stuffed Bell Peppers", "red pepper flakes")
        create_ri("Stuffed Bell Peppers", "wild rice")
        create_ri("Stuffed Bell Peppers", "pepper jack cheese")

create_ri("Garlic Roasted Potatoes", "potato")
        create_ri("Garlic Roasted Potatoes", "olive oil")
        create_ri("Garlic Roasted Potatoes", "salt")
        create_ri("Garlic Roasted Potatoes", "black pepper")
        create_ri("Garlic Roasted Potatoes", "garlic")
        create_ri("Garlic Roasted Potatoes", "parsley")

create_ri("French Toast", "cinnamon")
        create_ri("French Toast", "nutmeg")
        create_ri("French Toast", "sugar")
        create_ri("French Toast", "butter")
        create_ri("French Toast", "eggs")
        create_ri("French Toast", "milk")
        create_ri("French Toast", "vanilla extract")
        create_ri("French Toast", "challah")
        create_ri("French Toast", "brioche")
        create_ri("French Toast", "white bread")
        create_ri("French Toast", "maple syrup")

create_ri("Oven-Baked Salmon", "salmon")
        create_ri("Oven-Baked Salmon", "salt")
        create_ri("Oven-Baked Salmon", "black pepper")
        create_ri("Oven-Baked Salmon", "squash")
        create_ri("Oven-Baked Salmon", "shallot")
        create_ri("Oven-Baked Salmon", "red wine vinegar")
        create_ri("Oven-Baked Salmon", "capers")
        create_ri("Oven-Baked Salmon", "parsley")
        create_ri("Oven-Baked Salmon", "almonds")
        create_ri("Oven-Baked Salmon", "olive oil")

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
        create_ri("Perfectly Grilled Corn on the Cob", "worcestershire sauce")
        create_ri("Perfectly Grilled Corn on the Cob", "black pepper")
        create_ri("Perfectly Grilled Corn on the Cob", "herbs")

create_ri("No-Churn Chocolate Ice Cream", "condensed milk")
        create_ri("No-Churn Chocolate Ice Cream", "cocoa powder")
        create_ri("No-Churn Chocolate Ice Cream", "vanilla extract")
        create_ri("No-Churn Chocolate Ice Cream", "salt")
        create_ri("No-Churn Chocolate Ice Cream", "heavy cream")
        create_ri("No-Churn Chocolate Ice Cream", "almonds")
        create_ri("No-Churn Chocolate Ice Cream", "malted milk balls")
