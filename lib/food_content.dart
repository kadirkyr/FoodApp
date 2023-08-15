import 'package:flutter/material.dart';

import 'core/button.dart';
import 'core/constants.dart';
import 'core/image_network.dart';
import 'food_chose.dart';

class FoodContent extends StatefulWidget {
  const FoodContent({super.key});

  @override
  State<FoodContent> createState() => _FoodContentState();
}

class _FoodContentState extends State<FoodContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ConstantsString().foodlist[currentFoodIndex].name),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart_checkout_outlined))],
      ),
      body: Column(children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              ImageNetwork(
                image: ConstantsString().foodlist[currentFoodIndex].png,
                height: Sizes.size250,
                width: Sizes.size250,
              ),
              Text("Price: ${ConstantsString().foodlist[currentFoodIndex].price.toInt()}\$",
                  style: Theme.of(context).textTheme.headlineSmall),
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Card(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
            elevation: 0,
            color: ConstantsString.secondColor,
            child: Padding(
              padding: PaddingClass.horizontal2x,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    ConstantsString().foodlist[currentFoodIndex].content,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  CoreButton(
                    text: ConstantsString.addTheBasket,
                    onPressed: () {},
                    color: ConstantsString.bgColor,
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
