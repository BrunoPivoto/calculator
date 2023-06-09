import 'package:calculator/components/button.dart';
import 'package:calculator/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key, required this.cb});

  final void Function(String) cb;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          ButtonRow(buttons: [
            CalcButton.big(
              text: 'AC',
              cb: cb,
              color: CalcButton.DARK,
            ),
            CalcButton(
              text: '%',
              cb: cb,
              color: CalcButton.DARK,
            ),
            CalcButton.operation(text: '/', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRow(buttons: [
            CalcButton(text: '7', cb: cb),
            CalcButton(text: '8', cb: cb),
            CalcButton(text: '9', cb: cb),
            CalcButton.operation(text: 'x', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRow(buttons: [
            CalcButton(text: '4', cb: cb),
            CalcButton(text: '5', cb: cb),
            CalcButton(text: '6', cb: cb),
            CalcButton.operation(text: '-', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRow(buttons: [
            CalcButton(text: '1', cb: cb),
            CalcButton(text: '2', cb: cb),
            CalcButton(text: '3', cb: cb),
            CalcButton.operation(text: '+', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRow(buttons: [
            CalcButton.big(text: '0', cb: cb),
            CalcButton(text: '.', cb: cb),
            CalcButton.operation(text: '=', cb: cb),
          ]),
        ],
      ),
    );
  }
}
