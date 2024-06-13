import 'package:collection/collection.dart';
import 'package:delivery_app/models/cart_item.dart';
import 'package:delivery_app/models/food.dart';
import 'package:flutter/material.dart';

class Resturant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: " King Burger",
      description: "A juicy beef patty with melted cheddar",
      imagePath: "./assets/images/burger1.jpg",
      price: 100,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 100),
        Addon(name: "Bacon", price: 150),
        Addon(name: "Extra Cheese", price: 200),
      ],
    ),
    Food(
      name: " BBq bacon Burger",
      description: "Smoky BBQ sourse ,crispy bacon,and onion rings",
      imagePath: "./assets/images/burger2.jpg",
      price: 120,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 130),
        Addon(name: "Jalapenos", price: 170),
        Addon(name: "Extra BBQ sourse", price: 220),
      ],
    ),
    Food(
      name: " Veggie Burger",
      description: "Healty veggie patt tapped with fresh avokado",
      imagePath: "./assets/images/burger5.jpg",
      price: 100,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 110),
        Addon(name: "Grilled Mushromes", price: 150),
        Addon(name: "Nummus Spread", price: 200),
      ],
    ),
    Food(
      name: " Aloha Burger",
      description:
          "A char-grilled chiken brest tapped with a sourse of pinnallpe sourse",
      imagePath: "./assets/images/burger3.jpg",
      price: 120,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Teriyaki Glaze", price: 140),
        Addon(name: "Extra pineapple", price: 150),
        Addon(name: "Bacon", price: 200),
      ],
    ),
    Food(
      name: " Blue Moon Burger",
      description: "This burger is a blue Cheese lover's Dream",
      imagePath: "./assets/images/burger4.jpg",
      price: 100,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 120),
        Addon(name: "Bacon", price: 150),
        Addon(name: "Extra Cheese", price: 200),
      ],
    ),

    //salads
    Food(
      name: " Caeser Salad",
      description: "Crisp Roman lettuces,armrnsan cheese,croutons",
      imagePath: "./assets/images/salad1.jpg",
      price: 300,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Griled Chicken", price: 100),
        Addon(name: "Anchovies", price: 150),
        Addon(name: "Extra parmesan", price: 200),
      ],
    ),
    Food(
      name: " Greek Salad",
      description: "Tomattos,cucumber,red onion,olives,feta cheese",
      imagePath: "./assets/images/salad2.jpg",
      price: 320,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Griled Chicken", price: 100),
        Addon(name: "Anchovies", price: 150),
        Addon(name: "Extra parmesan", price: 200),
      ],
    ),
    Food(
      name: " Quinova Salad",
      description: "Quinova mixed with cucumber,ttomato,bell pepers",
      imagePath: "./assets/images/salad3.jpg",
      price: 340,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Griled Chicken", price: 100),
        Addon(name: "Anchovies", price: 150),
        Addon(name: "Extra parmesan", price: 200),
      ],
    ),
    Food(
      name: " Asian Sesame Salad",
      description:
          "Delight in the flavorse of the East with this sesame-nfuce salad",
      imagePath: "./assets/images/salad4.jpg",
      price: 300,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Griled Chicken", price: 100),
        Addon(name: "Anchovies", price: 150),
        Addon(name: "Extra parmesan", price: 200),
      ],
    ),
    Food(
      name: " South west Chcken Salad",
      description:
          "This colorful salad combined with the zesty flavor of the southhwest",
      imagePath: "./assets/images/salad5.jpg",
      price: 350,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Griled Chicken", price: 100),
        Addon(name: "Anchovies", price: 150),
        Addon(name: "Extra parmesan", price: 200),
      ],
    ),

    //sides
    Food(
      name: " Sweet potato Fries",
      description: "Crispy Sweet potato fries with a touch of salt",
      imagePath: "./assets/images/side2.jpg",
      price: 250,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Chese souse", price: 100),
        Addon(name: "Truffle oil", price: 150),
        Addon(name: "Cajun spice", price: 200),
      ],
    ),
    Food(
      name: " Onion Rings",
      description: "Golden and crispy onion rings ,perfect for dipping",
      imagePath: "./assets/images/side3.jpg",
      price: 200,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Ranch Dip", price: 50),
        Addon(name: "Spicy Mayo", price: 100),
        Addon(name: "Parmesan Dust", price: 150),
      ],
    ),
    Food(
      name: " Garlic bread",
      description:
          "Warm and tosty garlic bread,tapped with melted butter and parsley.",
      imagePath: "./assets/images/side1.jpg",
      price: 250,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra garlic", price: 100),
        Addon(name: "mozzarela cheese", price: 150),
        Addon(name: "Morinara Dip", price: 200),
      ],
    ),
    Food(
      name: " Small fried bacon",
      description: "Roust chiken with pack of rice basmathi",
      imagePath: "./assets/images/side4.jpg",
      price: 400,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Chese souse", price: 100),
        Addon(name: "chily source", price: 150),
        Addon(name: "extra chicken", price: 250),
      ],
    ),
    Food(
      name: " Sweet potato Fries",
      description: "Crispy Sweet potato fries with a touch of salt",
      imagePath: "./assets/images/side1.jpg",
      price: 250,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Chese souse", price: 100),
        Addon(name: "Truffle oil", price: 150),
        Addon(name: "Cajun spice", price: 200),
      ],
    ),

    //desserts

    Food(
      name: " Cheese cake",
      description:
          "Creemy cheesecake on a graham cracker crust,with berry compote",
      imagePath: "./assets/images/dessert1.jpg",
      price: 400,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Stowberry topping", price: 100),
        Addon(name: "blueberry compote", price: 150),
        Addon(name: "choclate cips", price: 200),
      ],
    ),

    Food(
      name: " Choclet Bowney",
      description: "Rice and fudgy chocolate browney,with chunk of chockelet",
      imagePath: "./assets/images/dessert3.jpg",
      price: 450,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanila ice cream", price: 100),
        Addon(name: "hot fudge", price: 150),
        Addon(name: "whipen cream", price: 200),
      ],
    ),
    Food(
      name: "Apple pie ",
      description:
          "Classic apple pie with flack crust and cinnemon-spiced appe filling",
      imagePath: "./assets/images/dessert2.jpg",
      price: 350,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "caramal sauce", price: 100),
        Addon(name: "vanila ice cream", price: 150),
        Addon(name: "cinnemon spicies", price: 200),
      ],
    ),
    Food(
      name: "red velvet lava cake ",
      description:
          "A delecteble red valvet cake with a warm,geoey choclae lava center",
      imagePath: "./assets/images/dessert4.jpg",
      price: 400,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Respberry sauce", price: 120),
        Addon(name: "Cream chese Icing", price: 130),
        Addon(name: "Choclet Sprinkles", price: 220),
      ],
    ),
    Food(
      name: "choclate cake ",
      description:
          "Classic choclate with flack crust and cinnemon-spiced appe filling",
      imagePath: "./assets/images/dessert5.jpg",
      price: 350,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "caramal sauce", price: 100),
        Addon(name: "vanila ice cream", price: 150),
        Addon(name: "cinnemon spicies", price: 200),
      ],
    ),

    //drinks

    Food(
      name: "Lemonade",
      description:
          "refreshing lemonade made with real lemons and a touch of sweetness",
      imagePath: "./assets/images/drinks3.jpg",
      price: 350,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Stowberrry flavor", price: 100),
        Addon(name: "Mint leaves", price: 150),
        Addon(name: "ginger Zest", price: 200),
      ],
    ),

    Food(
      name: "Ice Tea",
      description: "chiled ice tea with the hint f lemon,served over ice",
      imagePath: "./assets/images/drinks1.jpg",
      price: 400,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Peach paver", price: 120),
        Addon(name: "emon slices", price: 150),
        Addon(name: "Honey", price: 220),
      ],
    ),

    Food(
      name: "Smoothie",
      description: "A blend of fresh fuites and Youget",
      imagePath: "./assets/images/drinks4.jpg",
      price: 300,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protaine powder", price: 100),
        Addon(name: "Almond Milk", price: 150),
        Addon(name: "Chia seeds", price: 200),
      ],
    ),

    Food(
      name: "Mojito",
      description: "Aclassic cuban coctail with muddled lime and mnt",
      imagePath: "./assets/images/drinks5.jpg",
      price: 350,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Mint", price: 100),
        Addon(name: "Raspberry puree", price: 150),
        Addon(name: "Splash of coconut rum", price: 200),
      ],
    ),

    Food(
      name: "Caramal mojto",
      description: "A laayered coffe drink with Streamed milk ",
      imagePath: "./assets/images/drinks2.jpg",
      price: 450,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Stowberrry flavor", price: 120),
        Addon(name: "Mint leaves", price: 200),
        Addon(name: "ginger Zest", price: 250),
      ],
    ),
  ];

  //GETERS
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  //OPERATIONS
  final List<CartItem> _cart = [];
  //Add to the cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same and if
      bool isSameFood = item.food == food;

      //check if the  list of selected addons are the same

      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    //is item already exist ,increase its quantity

    if (cartItem != null) {
      cartItem.quantity++;
    }
    //othewise ,add new cart item to the cart list
    else {
      _cart.add(
          CartItem(food: food, selectedAddons: selectedAddons, quantity: 0));
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromeCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total frice of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }
  //get total number of items in the art

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }
  //clear cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
  //HELPERS

  //genette recipt

  //terminateble value of money
}
