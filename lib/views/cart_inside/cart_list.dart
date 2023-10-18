import 'package:flutter/material.dart';
import 'package:food_app/core/buttons/elevated_button.dart';
import 'package:food_app/core/image_widget.dart';
import 'package:food_app/products/language/constants.dart';

import '../../products/language/foods.dart';

class CartListView extends StatefulWidget {
  const CartListView({super.key});

  @override
  State<CartListView> createState() => _CartListViewState();
}

class _CartListViewState extends State<CartListView> {
  void removeFromBasket(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 8, child: totalPrice != 0 ? _baskListColumn() : const NewWidget()),
        Expanded(flex: 2, child: totalPrice != 0 ? _paymentAndInfoBar() : Container())
      ],
    );
  }

  ListView _baskListColumn() {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Card(
            child: ListTile(
                leading: ImageComponent(image: cartItems[index].png, width: Sizes.size75),
                title: Text(cartItems[index].name),
                subtitle: Text("${cartItems[index].price.toString()}\$",
                    style: const TextStyle(color: ProjectColors.secondColor)),
                trailing: IconButton(
                    onPressed: () {
                      removeFromBasket(index);
                    },
                    icon: const Icon(Icons.remove_circle_outlined))));
      },
      itemCount: cartItems.length,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(thickness: 2, color: ProjectColors.secondColor);
      },
    );
  }

  SizedBox _paymentAndInfoBar() {
    return SizedBox(
      child: Card(
        color: ProjectColors.secondColor,
        child: Padding(
          padding: PaddingClass.horizontal2x,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(flex: 3, child: CoreButton(onPressed: () {}, text: "Checkout", color: ProjectColors.bgColor)),
            Expanded(
                flex: 2,
                child: Text("${totalPrice.toString()}\$",
                    textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineSmall)),
          ]),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });
  static const String noItemCard = "No item in your cart...";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ImageComponent(image: ProjectKeys.emptyCartPNG, color: ProjectColors.secondColor),
        Text(noItemCard, style: Theme.of(context).textTheme.headlineSmall)
      ],
    );
  }
}
