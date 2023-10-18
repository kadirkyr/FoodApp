import 'package:flutter/material.dart';
import 'package:food_choose/products/language/constants.dart';
import 'package:food_choose/views/cart_inside/cart_list.dart';

class ShoppingView extends StatefulWidget {
  const ShoppingView({super.key});

  @override
  State<ShoppingView> createState() => _ShoppingViewState();
}

class _ShoppingViewState extends State<ShoppingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(ProjectKeys.baskInfo)),
      body: const CartListView(),
    );
  }
}
