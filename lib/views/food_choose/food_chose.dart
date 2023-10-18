import 'package:flutter/material.dart';
import 'package:food_app/core/buttons/icon_button.dart';

import '../../core/buttons/elevated_button.dart';
import '../../core/image_widget.dart';
import '../../products/language/constants.dart';
import '../../products/language/foods.dart';
import '../food_content/food_content.dart';

int currentFoodIndex = 0;

class CustomDemo extends StatelessWidget {
  const CustomDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [Text(ProjectKeys.foodApp, textAlign: TextAlign.start)],
        ),
      ),
      body: Padding(
        padding: PaddingClass.horizontal2x,
        child: Column(
          children: [
            const Expanded(flex: 35, child: FoodChooseRow()),
            const Spacer(
              flex: 10,
            ),
            Expanded(
                flex: 12,
                child: Text(ProjectKeys.weHaveSpecialFood,
                    textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineMedium)),
            const Spacer(flex: 12),
            Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CoreButton(
                      text: ProjectKeys.letsExplore,
                      onPressed: () {
                        showDialog(
                            context: context, builder: (context) => const Center(child: CircularProgressIndicator()));
                        Future.delayed(const Duration(milliseconds: 300), () {
                          Navigator.pop(context); // Dialog kapatılıyor
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FoodContent()),
                          );
                        });
                      }),
                )),
            const Spacer(flex: 8)
          ],
        ),
      ),
    );
  }
}

class FoodChooseRow extends StatefulWidget {
  const FoodChooseRow({super.key});

  @override
  State<FoodChooseRow> createState() => _FoodChooseRowState();
}

class _FoodChooseRowState extends State<FoodChooseRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 1,
                  child: CoreIconButton(onPressed: _foodChangeBack, icon: const Icon(Icons.chevron_left_outlined))),
              Expanded(
                  flex: 4,
                  child: Card(
                      color: Colors.transparent,
                      elevation: 0,
                      shape: const CircleBorder(),
                      child: ImageComponent(image: foodlist[currentFoodIndex].png))),
              Expanded(
                  flex: 1,
                  child: CoreIconButton(onPressed: _foodChangeForward, icon: const Icon(Icons.chevron_right_outlined)))
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Text(
                foodlist[currentFoodIndex].name,
                style: const TextStyle(fontSize: Sizes.size25),
              ),
              const Divider(height: Sizes.size25, color: ProjectColors.secondColor),
            ],
          ),
        ),
      ],
    );
  }

  void _foodChangeForward() {
    setState(() {
      currentFoodIndex++;
      if (currentFoodIndex >= foodlist.length) {
        currentFoodIndex = 0;
      }
    });
  }

  void _foodChangeBack() {
    setState(() {
      currentFoodIndex--;
      if (currentFoodIndex < 0) {
        currentFoodIndex = foodlist.length - 1;
      }
    });
  }
}
