import 'package:flutter/material.dart';
import 'package:food_choose/products/basket_listbuilder.dart';
import 'package:food_choose/products/language/constants.dart';

class ShoppingView extends StatelessWidget {
  const ShoppingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text(ProjectKeys.baskInfo)), body: const BaskListView());
  }
}
