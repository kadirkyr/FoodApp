import 'constants.dart';

class Foods {
  Foods({required this.content, required this.name, required this.png, required this.price});
  final String name;
  final String png;
  final String content;
  final int price;
}

final List<Foods> foodlist = [
  Foods(name: ProjectKeys.burger, png: ProjectKeys.burgerPNG, content: ProjectKeys.burgerContent, price: 30),
  Foods(name: ProjectKeys.pizza, png: ProjectKeys.pizzaPNG, content: ProjectKeys.pizzaContent, price: 50),
  Foods(name: ProjectKeys.beyti, png: ProjectKeys.beytiPNG, content: ProjectKeys.beytiContent, price: 35),
  Foods(name: ProjectKeys.spaghetti, png: ProjectKeys.spaghettiPNG, content: ProjectKeys.spaghettiContent, price: 25)
];

List<Foods> cartItems = [];

int get totalPrice {
  int sum = 0;
  for (var item in cartItems) {
    sum += item.price;
  }
  return sum;
}
