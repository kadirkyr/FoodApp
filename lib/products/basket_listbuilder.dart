import 'package:flutter/material.dart';

import 'language/foods.dart';

class BaskListView extends StatefulWidget {
  const BaskListView({super.key});

  @override
  State<BaskListView> createState() => _BaskListViewState();
}

class _BaskListViewState extends State<BaskListView> {
  void removeFromBasket(int index) {
    setState(() {
      basketItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
              title: Text(basketItems[index].name),
              subtitle: Text("${basketItems[index].price.toString()}\$"),
              trailing: IconButton(
                  onPressed: () {
                    removeFromBasket(index);
                  },
                  icon: const Icon(Icons.remove_circle_outlined))),
        );
      },
      itemCount: basketItems.length,
    );
  }
}
