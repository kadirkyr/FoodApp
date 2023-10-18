import 'package:flutter/material.dart';
import 'package:food_choose/views/cart_inside/cart_view.dart';

import '../../core/buttons/elevated_button.dart';
import '../../core/image_widget.dart';
import '../../products/language/constants.dart';
import '../../products/language/foods.dart';
import '../food_choose/food_chose.dart';

class FoodContent extends StatelessWidget {
  const FoodContent({super.key});

  void addToBasket() {
    cartItems.add(foodlist[currentFoodIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foodlist[currentFoodIndex].name),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ShoppingView()));
              },
              icon: const Icon(Icons.shopping_cart_sharp))
        ],
      ),
      body: Column(children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Expanded(flex: 3, child: ImageComponent(image: foodlist[currentFoodIndex].png)),
              Expanded(
                flex: 1,
                child: Text("Price: ${foodlist[currentFoodIndex].price.toInt()}\$",
                    style: Theme.of(context).textTheme.headlineSmall),
              )
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Card(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
            elevation: 0,
            color: ProjectColors.secondColor,
            child: Padding(
              padding: PaddingClass.horizontal2x,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(foodlist[currentFoodIndex].content,
                      textAlign: TextAlign.start, style: Theme.of(context).textTheme.headlineSmall),
                  CoreButton(
                      text: ProjectKeys.addTheBasket,
                      onPressed: () {
                        addToBasket();
                      },
                      color: ProjectColors.bgColor)
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
