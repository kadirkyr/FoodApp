import 'package:flutter/material.dart';
import 'package:food_choose/core/image_network.dart';

import 'core/button.dart';
import 'core/constants.dart';
import 'food_content.dart';

int currentFoodIndex = 0;

class CustomDemo extends StatefulWidget {
  const CustomDemo({super.key});

  @override
  State<CustomDemo> createState() => _CustomDemoState();
}

class _CustomDemoState extends State<CustomDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              ConstantsString.foodApp,
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
      body: Padding(
        padding: PaddingClass.horizontal2x,
        child: Column(
          children: [
            Expanded(flex: 35, child: _ChangeFoodColumn()),
            const Spacer(
              flex: 10,
            ),
            Expanded(
                flex: 12,
                child: Text(ConstantsString.weHaveSpecialFood,
                    textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineMedium)),
            const Spacer(flex: 12),
            Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CoreButton(
                    text: ConstantsString.letsExplore,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => const Center(child: CircularProgressIndicator()),
                      );
                      Future.delayed(const Duration(milliseconds: 300), () {
                        Navigator.pop(context); // Dialog kapatılıyor
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FoodContent(),
                          ),
                        );
                      });
                    },
                  ),
                )),
            const Spacer(flex: 8)
          ],
        ),
      ),
    );
  }

  Column _ChangeFoodColumn() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CoreIconButton(onPressed: _foodChangeBack, icon: const Icon(Icons.chevron_left_outlined)),
            Card(
                color: Colors.transparent,
                elevation: 0,
                shape: const CircleBorder(),
                child: ImageNetwork(image: ConstantsString().foodlist[currentFoodIndex].png)),
            CoreIconButton(onPressed: _foodChangeForward, icon: const Icon(Icons.chevron_right_outlined))
          ],
        ),
        Text(
          ConstantsString().foodlist[currentFoodIndex].name,
          style: const TextStyle(fontSize: Sizes.size),
        ),
        const Divider(height: Sizes.size, color: ConstantsString.secondColor),
      ],
    );
  }

  void _foodChangeForward() {
    setState(() {
      currentFoodIndex++;
      if (currentFoodIndex >= ConstantsString().foodlist.length) {
        currentFoodIndex = 0;
      }
    });
  }

  void _foodChangeBack() {
    setState(() {
      currentFoodIndex--;
      if (currentFoodIndex < 0) {
        currentFoodIndex = ConstantsString().foodlist.length - 1;
      }
    });
  }
}
