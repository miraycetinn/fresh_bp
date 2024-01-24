import 'package:flutter/material.dart';
import 'package:freshh/main.dart';

class ButtonStyles {
  static final ButtonStyle blueRounded = ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all<Color>(HexColor("246CFE")),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: BorderSide(color: HexColor("246CFE")))));

  static final ButtonStyle imageRounded = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(HexColor("181A1F")),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: BorderSide(color: HexColor("666A7A"), width: 1))));
}
