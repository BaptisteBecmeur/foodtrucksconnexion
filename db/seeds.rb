
# # Ingredient.destroy_all
# ingredient = [
# Bacon
# Beef fat
# Butter
# Chicken fat
# Cocoa butter
# Coconut  coconut oil
# Hydrogenated fats  oils
# Lard
# Palm  palm kernel oil
# Powdered whole milk solids
# Shortening
# Suet
# Tallow
# Trans fat
# Hard margarine
# Hydrogenated fats  oils
# Partially hydrogenated fats  oils
# Shortening
# Sodium
# Baking powder
# Baking soda
# Brine
# Celery salt
# Disodium phosphate
# Garlic salt
# Monosodium glutamate (MSG)
# Onion salt
# Salt
# Sodium alginate
# Sodium benzoate
# Sodium bisulfate
# Sodium proprionate
# Soy sauce
# Sugar
# Brown sugar
# Cane juice extract
# Corn syrup
# Demerara or Turbinado sugar
# Dextrose
# Evaporated cane juice
# Fructose
# Galactose
# Glucose
# Glucose-fructose
# High-fructose corn syrup
# Honey
# Invert sugar
# Lactose
# Liquid sugar
# Maltose
# Molasses
# Sucrose
# Syrup
# Treacle
# # ingredients = [
# # 'Angostura Bitter',
# # 'Bacardi Superior Rum',
# # 'Banana',
# # 'Beer',
# # 'Bitter Lemon',
# # 'Blackcurrant Cordial',
# # 'Blackcurrant Juice',
# # 'Brandy',
# # 'Brown Sugar',
# # 'Butter',
# # 'Champagne',
# # 'Chocolate',
# # 'Cider',
# # 'Cinnamon',
# # 'Cocoa Powder',
# # 'Coffee',
# # 'Cointreau',
# # 'Coke',
# # 'Cranberry Juice',
# # 'Cream',
# # 'Dark Rum',
# # 'Diet Coke',
# # 'Double Cream',
# # 'Egg white',
# # 'Gin',
# # 'Ginger Ale',
# # 'Grenadine',
# # 'Honey',
# # 'Hot Chocolate',
# # 'Lemon',
# # 'Lemon Juice',
# # 'Lemonade',
# # 'Lime',
# # 'Lime Juice',
# # 'Marmalade',
# # 'Milk',
# # 'Nutmeg',
# # 'Orange Juice',
# # 'Pepper',
# # 'Red Wine',
# # 'Rum',
# # 'Salt',
# # 'Sherry Sweet',
# # 'Soda Water',
# # 'Sparkling Water',
# # 'Sugar',
# # 'Sugar Syrup',
# # 'Sweet Vermouth',
# # 'Tabasco Sauce',
# # 'Tequila',
# # 'Tonic Water',
# # 'Triple Sec',
# # 'Vermouth',
# # 'Vodka',
# # 'Whisky',
# # 'White Rum',
# # 'White Wine',
# # 'Worcestershire Sauce'
# # ]
# # ​
# ingredients.each { |ingredient| Ingredient.create(name: ingredient) }
# ​
# Foodtruck.destroy_all
# ​
# foodtrucks = [
#   {
#     name: "le camion qui fume",
#     image: "http://www.seriouseats.com/images/2014/11/20141104-cocktail-party-old-fashioneds-holiday-vicky-wasik-3.jpg"
#   },
#   {
#     name: "le camion des îles",
#     image: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-daiquiri.jpg"
#   },
#   {
#     name: "bienvenue chez papi",
#     image: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-margarita.jpg"
#     },
#   {
#     name: "Goody's",
#     image: "http://www.seriouseats.com/images/2014/11/20141101-cognac-sidecar-carey-jones.jpg"
#     },
#   {
#     name: "the french",
#     image: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-french75.jpg"
#     },
#   {
#     name: "welcome",
#     image: "http://www.seriouseats.com/images/2015/03/twase-20150320-21.jpg"
#     },
#   {
#     name: "foodtruck blue",
#     image: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-irish-coffee.jpg"
#     },
#   {
#     name: "Jack Rose",
#     image: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-jack-rose.jpg"
#     },
#   {
#     name: "Negroni",
#     image: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-negroni.jpg"
#     },
#   {
#     name: "Boulevardier-foodtruck",
#     image: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-boulevardier.jpg"
#     },
#   {
#     name: "Sazerac-foodtruck",
#     image: "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-sazerac.jpg"
#     }
#
# ]
# ​
# foodtrucks.each { |foodtruck| Foodtruck.create(foodtruck) }
