import 'package:flutter/material.dart';
import 'package:food_choose/core/button.dart';
import 'package:food_choose/core/image_network.dart';
import 'package:food_choose/products/language/constants.dart';

import 'language/foods.dart';

class BaskListView extends StatefulWidget {
  const BaskListView({super.key});

  @override
  State<BaskListView> createState() => _BaskListViewState();
}

class _BaskListViewState extends State<BaskListView> {
  bool baskIsEmpty = false;

  void removeFromBasket(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  String updatePriceInfo() {
    if (totalPrice.toString() == "0") {
      return "0\$";
    } else {
      return "${totalPrice.toString()}\$";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Expanded(flex: 8, child: baskListColumn()), Expanded(flex: 2, child: paymentAndInfoBar())],
    );
  }

  ListView baskListColumn() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
              dense: false,
              leading: ImageComponent(image: cartItems[index].png, width: Sizes.size100),
              title: Text(cartItems[index].name),
              subtitle: Text("${cartItems[index].price.toString()}\$",
                  style: const TextStyle(color: ProjectColors.secondColor)),
              trailing: IconButton(
                  onPressed: () {
                    removeFromBasket(index);
                  },
                  icon: const Icon(Icons.remove_circle_outlined))),
        );
      },
      itemCount: cartItems.length,
    );
  }

  SizedBox paymentAndInfoBar() {
    return SizedBox(
      child: Card(
        color: ProjectColors.secondColor,
        child: Padding(
          padding: PaddingClass.horizontal2x,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(flex: 3, child: CoreButton(onPressed: () {}, text: "Checkout", color: ProjectColors.bgColor)),
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Total: ", textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                    Text(updatePriceInfo(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 20, color: ProjectColors.bgColor)),
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
