Foodtruck.destroy_all

foodtrucks = [
  {
    name: "le camion qui fume",
    remote_image_url: "http://www.la-croix.com/var/bayard/storage/images/lacroix/culture/actualite/des-cantines-au-coin-des-rues-de-paris-_ng_-2013-01-16-899542/28921245-1-fre-FR/Des-cantines-au-coin-des-rues-de-Paris_article_popin.jpg",
    address: "17 place de la bourse, Bordeaux",
    category: "burger"
  },
  {
    name: "le camion des îles",
    remote_image_url: "https://res-5.cloudinary.com/dzr44aeiu/image/upload/t_media_lib_thumb/v1447947929/food-truck-1_m1wssu.jpg",
    address: " 9 Rue d'Argenteuil, Paris",
    category: "burger"
  },
  {
    name: "bienvenue chez papi",
    remote_image_url: "https://res-5.cloudinary.com/dzr44aeiu/image/upload/t_media_lib_thumb/v1447947927/foodtruck1_vmsq12.jpg",
    address: "22 Rue des Carmes, Paris",
    category: "burger"
  },
  {
    name: "Goody's",
    image: "https://res-3.cloudinary.com/dzr44aeiu/image/upload/t_media_lib_thumb/v1447947919/food-truck_l37rtl.jpg",
    address: "3 place du tribunal, Grenoble",
    category: "burger"
    },
  {
    name: "the french",
    remote_image_url: "https://res-4.cloudinary.com/dzr44aeiu/image/upload/t_media_lib_thumb/v1447947918/1215_foodtruck1_zoqjm6.jpg",
    address: "Place Antonio-Macéo, 97232 Le Lamentin",
    category: "burger"
    },
  {
    name: "wel",
    remote_image_url: "https://res-4.cloudinary.com/dzr44aeiu/image/upload/t_media_lib_thumb/v1447947918/1215_foodtruck1_zoqjm6.jpg",
    address: "1 avenue Pierre Semard, Marseille ",
    category: "burger"
    },
  {
    name: "foodtruck blue",
    remote_image_url: "https://res-2.cloudinary.com/dzr44aeiu/image/upload/t_media_lib_thumb/v1447947918/food-truck2_xyjmhz.jpg",
    address: "36 Rue de la jeunesse, Toulouse",
    category: "burger"
  }
]

foodtrucks.each { |foodtruck| Foodtruck.create(foodtruck)}
