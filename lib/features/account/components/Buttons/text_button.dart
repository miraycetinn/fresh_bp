import 'package:flutter/material.dart';
import 'package:freshh/main.dart';

class AppTextButton extends StatelessWidget {
  final String buttonText;
  final double buttonSize;
  final VoidCallback? callback;
  const AppTextButton(
      {Key? key,
      required this.buttonSize,
      required this.buttonText,
      this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Text(buttonText,
          style: TextStyle(
              color: HexColor("616575"),
              fontSize: buttonSize,
              fontWeight: FontWeight.bold)),
    );
  }
}
