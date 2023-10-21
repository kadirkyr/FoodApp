import 'package:flutter/material.dart';

import '../../products/language/constants.dart';

class CheckoutTextField extends StatelessWidget {
  CheckoutTextField({
    super.key,
    this.isNumber = true,
  });

  static const String creditLabel = "Credit Card Number";
  static const personLabel = "Name Surname";
  static const creditHint = "**** **** **** ****";
  static const personHint = "James Barnes";
  late final int maxLength = isNumber ? 16 : 24;
  static const double fontSize = 22;
  final bool isNumber;
  static const Icon personIcon = Icon(Icons.person_2_rounded);
  static const Icon creditCardIcon = Icon(Icons.credit_card_rounded);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: isNumber ? TextInputAction.done : TextInputAction.next,
      style: const TextStyle(fontSize: fontSize),
      buildCounter: (context, {required currentLength, required isFocused, maxLength}) {
        if (currentLength == maxLength) {
          return isNumber
              ? const Icon(
                  Icons.credit_score_rounded,
                  color: Colors.green,
                )
              : null;
        }
        return null;
      },
      cursorColor: ProjectColors.secondColor,
      maxLength: maxLength,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: ProjectColors.secondColor),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          isDense: false,
          suffixIcon: isNumber ? creditCardIcon : personIcon,
          hintText: isNumber ? creditHint : personHint,
          labelText: isNumber ? creditLabel : personLabel),
    );
  }
}
