import 'package:flutter/material.dart';
import 'package:food_choose/foods.dart';

class ConstantsString {
  static const String burgerPNG =
      "https://static.vecteezy.com/system/resources/previews/021/665/613/original/beef-burger-isolated-png.png";
  static const String pizzaPNG = "https://www.pizza-piece.com/wp-content/uploads/2020/07/cropped-sucuklu-pizza.png";
  static const String spaghettiPNG = "https://www.pngmart.com/files/5/Spaghetti-PNG-Transparent-Image.png";
  static const String beytiPNG = "https://ozdiyarbakirsofrasi.com/wp-content/uploads/2022/03/beyt.png";
  static const String burger = "Hamburger";
  static const String pizza = "Pizza";
  static const String spaghetti = "Spaghetti";
  static const String beyti = "Beyti";
  static const String letsExplore = "Let's Explore";
  static const String weHaveSpecialFood = "We Have\nSpecial Food";
  static const String foodApp = "Food App";
  static const String burgerContent =
      "We make the best burger in town. You will love the taste of veal, which we decorate with smoked veal and cheddar cheese.";

  static const String pizzaContent = "Hamburger best asjdkalsjdkl askldjkalsj aksdjklasjd lkasdjlk";
  static const String beytiContent = "Hamburger best asjdkalsjdkl askldjkalsj aksdjklasjd lkasdjlk";
  static const String spaghettiContent = "Hamburger best asjdkalsjdkl askldjkalsj aksdjklasjd lkasdjlk";
  static const String addTheBasket = "Add the basket";
  static const Color bgColor = Color.fromARGB(255, 6, 10, 24);
  static const Color secondColor = Color.fromARGB(255, 254, 104, 4);
  final List<Foods> foodlist = [
    Foods(name: burger, png: burgerPNG, content: burgerContent, price: 30),
    Foods(name: pizza, png: pizzaPNG, content: pizzaContent, price: 50),
    Foods(name: beyti, png: beytiPNG, content: beytiContent, price: 35),
    Foods(name: spaghetti, png: spaghettiPNG, content: spaghettiContent, price: 25)
  ];
}

class Sizes {
  static const double size8x = 200;
  static const double size35 = 35;
  static const double size75 = 75;
  static const double size = 25;

  static const double size250 = 250;
  static const double size300 = 300;
  static const double size350 = 350;
}

class PaddingClass {
  static const EdgeInsets horizontal2x = EdgeInsets.symmetric(horizontal: 30);
}
