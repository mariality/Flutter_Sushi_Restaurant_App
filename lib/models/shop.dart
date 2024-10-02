import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier {
  // food menu
  final List<Food> _foodMenu = [
    //samo sushi
    Food(
        name: "Salmon Sushi",
        price: "15.00",
        imagePath: "lib/images/salmon_sushi.png",
        rating: "4.9"),
    // tuna
    Food(
        name: "Tuna",
        price: "12.00",
        imagePath: "lib/images/tuna.png",
        rating: "4.7"),
  ];
  

  // customer cart
  final List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
