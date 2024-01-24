import 'package:flutter/material.dart';

import '../../main.dart';

class PrimaryTabButton extends StatelessWidget {
  final String buttonText;
  final int itemIndex;
  final ValueNotifier<int> notifier;
  final VoidCallback? callback;
  const PrimaryTabButton(
      {Key? key, this.callback, required this.notifier, required this.buttonText, required this.itemIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: ValueListenableBuilder(
          valueListenable: notifier,
          builder: (BuildContext context, _, __) {
            return ElevatedButton(
                onPressed: () {
                  notifier.value = itemIndex;
                  if (callback != null) {
                    callback!();
                  }
                },
                style: ButtonStyle(
                    backgroundColor: notifier.value == itemIndex
                        ? MaterialStateProperty.all<Color>(HexColor("246CFE"))
                        : MaterialStateProperty.all<Color>(HexColor("181A1F")),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: notifier.value == itemIndex
                            ? BorderSide(color: HexColor("246CFE"))
                            : BorderSide(color: HexColor("181A1F"))))),
                child: Text(buttonText, style: TextStyle(fontSize: 16, color: Colors.white)));
          }),
    );
  }
}
