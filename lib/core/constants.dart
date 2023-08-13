import 'package:flutter/material.dart';

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
  static const String weHaveSpecialFood = "We Have Special Food";
  final Color bgColor = const Color.fromARGB(255, 6, 10, 24);
  final Color secondColor = const Color.fromARGB(255, 254, 104, 4);
  Map<String, String> foodList = {burgerPNG: burger, pizzaPNG: pizza, spaghettiPNG: spaghetti, beytiPNG: beyti};
}

class Sizes {
  static const double size8x = 200;
  static const double size2x = 50;
  static const double size3x = 75;
  static const double size = 25;
  static const double size4x = 100;
  static const double size5x = 15;
}
