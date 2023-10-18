import 'package:flutter/material.dart';

import '../../products/language/constants.dart';

class CoreIconButton extends StatelessWidget {
  const CoreIconButton({super.key, required this.onPressed, required this.icon});
  final void Function() onPressed;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: ProjectColors.secondColor,
        shape: const CircleBorder(),
        child: IconButton(onPressed: onPressed, icon: icon, splashColor: Colors.transparent, splashRadius: 1));
  }
}
