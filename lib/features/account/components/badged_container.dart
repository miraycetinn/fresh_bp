import 'package:flutter/material.dart';
import 'package:freshh/main.dart';

class BadgedContainer extends StatelessWidget {
  final String label;
  final String value;
  final String badgeColor;
  final VoidCallback? callback;

  const BadgedContainer({Key? key, required this.label, required this.value, required this.badgeColor, this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        width: double.infinity,
        height: 90,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(color: Colors.cyan, borderRadius: BorderRadius.circular(10)),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(color: HexColor("A06AFA"), shape: BoxShape.circle),
              child: Icon(Icons.do_not_disturb, color: Colors.white, size: 30)),
          SizedBox(width: 20,),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(label, style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            (value == "Off")
                ? Text(value, style: TextStyle(fontWeight: FontWeight.bold, color: HexColor("5E6272")))
                : Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: HexColor(badgeColor),
                    ),
                    child: Text(value, style: TextStyle(fontWeight: FontWeight.bold)))
          ])
        ]),
      ),
    );
  }
}
