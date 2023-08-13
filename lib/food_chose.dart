import 'package:flutter/material.dart';

import 'core/constants.dart';
import 'core/widgets/button.dart';

class CustomDemo extends StatefulWidget {
  const CustomDemo({super.key});

  @override
  State<CustomDemo> createState() => _CustomDemoState();
}

class _CustomDemoState extends State<CustomDemo> {
  int _currentFoodIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantsString().bgColor,
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              ConstantsString.foodApp,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ),
        toolbarHeight: Sizes.size4x,
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
              child: Container(
                child: Image.network(
                  ConstantsString().foodList.keys.toList()[_currentFoodIndex],
                  fit: BoxFit.contain,
                  height: Sizes.size8x,
                  width: Sizes.size8x,
                ),
              ),
            ),
            CoreIconButton(onPressed: _foodChangeForward, icon: const Icon(Icons.chevron_right_outlined))
          ],
        ),
        Text(
          ConstantsString().foodList.values.toList()[_currentFoodIndex],
          style: const TextStyle(fontSize: Sizes.size),
        ),
        Divider(height: 40, color: ConstantsString().secondColor),
      ],
    );
  }

  void _foodChangeForward() {
    setState(() {
      _currentFoodIndex++;
      if (_currentFoodIndex >= ConstantsString().foodList.keys.length) {
        _currentFoodIndex = 0;
      }
    });
  }

  void _foodChangeBack() {
    setState(() {
      _currentFoodIndex--;
      if (_currentFoodIndex < 0) {
        _currentFoodIndex = ConstantsString().foodList.keys.length - 1;
      }
    });
  }
}
