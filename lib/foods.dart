import 'core/constants.dart';

class Foods {
  Foods({this.productCount = 0, required this.content, required this.name, required this.png, required this.price});
  final String name;
  final String png;
  final String content;
  final double price;
  final int productCount;
}

final List<Foods> foodlist = [
  Foods(name: ProjectKeys.burger, png: ProjectKeys.burgerPNG, content: ProjectKeys.burgerContent, price: 30),
  Foods(name: ProjectKeys.pizza, png: ProjectKeys.pizzaPNG, content: ProjectKeys.pizzaContent, price: 50),
  Foods(name: ProjectKeys.beyti, png: ProjectKeys.beytiPNG, content: ProjectKeys.beytiContent, price: 35),
  Foods(name: ProjectKeys.spaghetti, png: ProjectKeys.spaghettiPNG, content: ProjectKeys.spaghettiContent, price: 25)
];
