import 'package:flutter/material.dart';
import 'package:food_choose/products/language/constants.dart';
import 'package:food_choose/views/payment/payment.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
      ),
      body: Padding(
        padding: PaddingClass.horizontal2x,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const CreditCardTextField(),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: expireDateRow(),
                      ),
                      const Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(right: 60),
                        child: TextField(
                            keyboardType: TextInputType.number,
                            maxLength: 3,
                            decoration: InputDecoration(
                              counterText: "",
                              hintText: "CVV",
                              contentPadding: EdgeInsets.all(10),
                              isDense: true,
                              hintStyle: TextStyle(fontSize: 18),
                            )),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row expireDateRow() {
    return Row(
      children: [
        MyDropdownButton(
          list: CreditCartExpireDate().monthsList,
          hintText: CreditCartExpireDate().nowMonth.toString(),
        ),
        MyDropdownButton(
          list: CreditCartExpireDate().yearsList,
          hintText: CreditCartExpireDate().nowYear.toString(),
        )
      ],
    );
  }
}

class MyDropdownButton extends StatelessWidget {
  const MyDropdownButton({
    super.key,
    required this.list,
    required this.hintText,
  });
  final List<DropdownMenuItem> list;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: list,
      onChanged: (value) {},
      hint: Text(hintText),
      elevation: 0,
      dropdownColor: ProjectColors.secondColor,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      menuMaxHeight: Sizes.size250,
      underline: Container(),
      style: const TextStyle(fontSize: 18),
      iconEnabledColor: ProjectColors.secondColor,
      icon: const Icon(Icons.arrow_drop_down_rounded),
      iconSize: 28,
    );
  }
}

class CreditCartExpireDate {
  final int nowYear = DateTime.now().year;
  final int nowMonth = DateTime.now().month;
  final List<DropdownMenuItem> monthsList = List.generate(
      12,
      (index) => DropdownMenuItem(
            value: 1 + index,
            child: Text((1 + index).toString()),
          ));

  List<DropdownMenuItem> yearsList = List<DropdownMenuItem<int>>.generate(
    8,
    (int index) => DropdownMenuItem(
      value: 2023 + index,
      child: Text((2023 + index).toString()),
    ),
  );
}
