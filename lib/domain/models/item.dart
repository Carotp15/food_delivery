import 'package:flutter/foundation.dart';

class ItemModel {
  String id;
  int quantity;
  String img;
  String name;
  String price;
  String description;
  bool liked;
  List<String> category;

  ItemModel(
      {required this.id,
      required this.img,
      required this.name,
      required this.price,
      required this.description,
      required this.quantity,
      required this.liked,
      required this.category});

  ItemModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        quantity = json['quantity'],
        img = json['img'],
        name = json['name'],
        price = json['price'],
        description = json['description'],
        liked = json['liked'],
        category = json['category'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'quantity': quantity,
        'img': img,
        'name': name,
        'price': price,
        'description': description,
        'liked': liked,
        'category': category,
      };
}

List<ItemModel> itemsList = [
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/01-lemon-cheesecake.png',
      name: 'Lemon Cheesecake',
      price: '18.00',
      description: 'Creamy and rich, this Lemon Cheesecake has a cookie crust and is topped with a tart lemon curd. If you love lemon, this will be your favorite cheesecake!',
      liked: true,
      category: ['dessert']),

  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/05-macaroons.png',
      name: 'Macaroons',
      price: '18.50',
      description: 'Freshly baked macaroons with different flavors',
      liked: false,
      category: ['dessert']),
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/08-cream-cupcakes.png',
      name: 'Cream Cupcakes',
      price: '17.50',
      description: 'These dreamy cream-filled chocolate cupcakes start with a moist and deeply chocolatey cupcake, which is filled with fluffy whipped vanilla buttercream, and topped with a rich 2-ingredient chocolate ganache.',
      liked: false,
      category: ['dessert']),

  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/02-chocolate-cake-1.png',
      name: 'Chocolate Cheesecake',
      price: '17.00',
      description: ' A creamy chocolate cheesecake served on a crisp chocolate crust and topped off with dark chocolate ganache.',
      liked: false,
      category: ['dessert']),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/09-fruit-plate.png',
      name: 'Fruit Plate',
      price: '11.00',
      description: 'This fruit plate makes a fantastic casual, easy dessert and works for almost all diets.',
      liked: true,
      category: ['dessert']),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/03-chocolate-donuts.png',
      name: 'Chocolate Donuts',
      price: '16.50',
      description: 'The doughnuts are first fully submerged in a buttery bath of vanilla-spiked glaze, and then just the tops are dunked in a final coat of delicious chocolate.',
      liked: false,
      category: ['dessert']),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/13-strawberry-powdered-cake.png',
      name: 'Strawberry Cake',
      price: '18.60',
      description: 'Jam-packed with fresh strawberries, this strawberry cake is one of the simplest, most delicious cakes youll ever taste',
      liked: false,
      category: ['dessert']),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/04-fluffy-cake.png',
      name: 'Fluffy Cake',
      price: '19.70',
      description: 'light, airy, and just straight up DELICIOUS! Its so versatile that you can pair it with literally anything.',
      liked: false,
      category: ['dessert']),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/06-white-cream-cake.png',
      name: 'White Cream Cake',
      price: '18.85',
      description: 'This is the PERFECT white cake with a soft texture, moist crumb, and wonderful vanilla flavor; plus, it tastes incredible with creamy vanilla buttercream.',
      liked: true,
      category: ['dessert']),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/14-fruit-pie.png',
      name: 'Fruit Pie',
      price: '7.50',
      description: 'Colorful fruit pizza features a vibrant bounty of fruit atop a soft sugar cookie crust and thick, tangy cream cheese frosting. ',
      liked: false,
      category: ['dessert']),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/07-honey-cake.png',
      name: 'Honey Cake',
      price: '10.80',
      description: 'Traditional 8 layer honey cake from Russia, and truly one of a kind. It is soft, moist, with lots of caramely-nutty flavour, and just enough tang from the sour cream to beautifully balance out all that honey goodness. ',
      liked: false,
      category: ['dessert']),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/11-powdered-cake.png',
      name: 'Powdered Sugar Donut Cake',
      price: '11.95',
      description: 'A moist, dense, and perfectly sweet cake. Serve with fresh berries for the perfect easy dessert! ',
      liked: true,
      category: ['dessert']),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/10-strawberries.png',
      name: 'Strawberries',
      price: '13.80',
      description: 'This fruit plate makes a fantastic casual, easy dessert and works for almost all diets.',
      liked: true,
      category: ['dessert']),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/12-chocolate-cake-2.png',
      name: 'Chocolate Cake',
      price: '15.70',
      description: 'A great, everyday Chocolate Cake. Tender, moist crumb, truly tastes of chocolate',
      liked: false,
      category: ['dessert']),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/desserts/15-apple-pie.png',
      name: 'Apple Pie',
      price: '12.95',
      description: 'The perfect Apple Pie starts with a tender, flaky pie crust and juicy apple slices drenched in sugar, cinnamon and nutmeg!',
      liked: false,
      category: ['dessert']),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/food/9.png',
      name: 'Chicken Soup',
      price: '12.00',
      description: 'This chicken soup is jam-packed with a ton of nutrient-dense vegetables such as carrots, parsnips, leek, celery, and onion, plus fresh herbs.',
      liked: true,
      category: ["food"]),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/food/7.png',
      name: 'Beef Stir Fry',
      description: 'This beef stir fry is the perfect dish filled with tender beef, lots of veggies, and an easy flavorful sauce.',
      price: '23.00',
      liked: false,
      category: ["food"]),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/food/8.png',
      name: 'Spaghetti alla Puttanesca',
      price: '19.00',
      description: 'Spaghetti alla puttanesca is a tasty first course made with tomato, olives, anchovies, and capers.',
      liked: false,
      category: ["food"]),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/food/5.png',
      name: 'Fried Chicken',
      price: '19.00',
      description: 'This is a Fried Chicken with the most insanely crispy, thick craggy crust seasoned with a rich spice mix!.',
      liked: true,
      category: ["food"]),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/food/6.png',
      name: 'Shopska salad',
      price: '19.00',
      description: 'Shopska salad is a Bulgarian side dish with roasted red peppers, cucumbers and tomatoes. Its nutritious, flavorful, and weeknight-friendly.',
      liked: false,
      category: ["food"]),
  
  ItemModel(
      id: UniqueKey().toString(),
      quantity: 1,
      img: 'assets/images/seafood/1.png',
      name: 'Marmalade Glazed Salmon',
      price: '19.00',
      description: 'The sweetness of orange marmalade meshes with the salty taste of soy sauce for this delectable glazed salmon creation..',
      liked: true,
      category: ["food", "seafood"]),
];
