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
        toolbarHeight: Sizes.size3x,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Expanded(flex: 35, child: _ChangeFoodColumn()),
            const Spacer(
              flex: 15,
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
            IconButton(
                onPressed: () {
                  _foodChangeBack();
                },
                icon: const Icon(Icons.chevron_left)),
            Card(
              color: Colors.transparent,
              elevation: 1,
              shadowColor: const Color.fromARGB(255, 183, 181, 181),
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
            IconButton(
                onPressed: () {
                  _foodChangeForward();
                },
                icon: const Icon(Icons.chevron_right)),
          ],
        ),
        const Divider(height: 40),
        Text(
          ConstantsString().foodList.values.toList()[_currentFoodIndex],
          style: const TextStyle(fontSize: Sizes.size),
        ),
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
