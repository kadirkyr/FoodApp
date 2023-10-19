import 'package:flutter/material.dart';
import 'package:food_choose/products/language/constants.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
      ),
      body: const Column(
        children: [
          MyTextField(),
        ],
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 25),
      buildCounter: (context, {required currentLength, required isFocused, maxLength}) {
        if (currentLength != 16) {
          return Text("${currentLength.toString()} / 16");
        }
        return const Icon(Icons.done);
      },
      cursorColor: ProjectColors.secondColor,
      cursorOpacityAnimates: true,
      maxLength: 16,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ProjectColors.secondColor)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ProjectColors.secondColor)),
          isDense: false,
          suffixIcon: Icon(Icons.credit_card),
          hintText: "**** **** **** ****",
          labelText: "Credit Card Number"),
    );
  }
}
