import 'package:flutter/material.dart';

import '../../products/language/constants.dart';

class CreditCardTextField extends StatelessWidget {
  const CreditCardTextField({
    super.key,
  });
  final String labelText = "Credit Card Number";
  final String hintText = "**** **** **** ****";

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 25, letterSpacing: 0),
      buildCounter: (context, {required currentLength, required isFocused, maxLength}) {
        if (currentLength == 16) {
          return const Icon(
            Icons.credit_score_rounded,
            color: Colors.green,
          );
        }
        return null;
      },
      cursorColor: ProjectColors.secondColor,
      cursorOpacityAnimates: true,
      maxLength: 16,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: ProjectColors.secondColor),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          isDense: false,
          suffixIcon: const Icon(Icons.credit_card),
          hintText: hintText,
          labelText: labelText),
    );
  }
}
