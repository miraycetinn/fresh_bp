import 'package:flutter/material.dart';

import '../../../main.dart';

// ignore: must_be_immutable
class ProfileTextOption extends StatelessWidget {
  final String label;

  final IconData icon;
  final double? margin;

  ProfileTextOption(
      {Key? key, required this.label, required this.icon, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFF262A34),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: this.margin ?? 10.0), // 8.0 as default margin.
            child: ListTile(
                title: Row(
                  children: [
                    Icon(icon, color: Colors.white, size: 24),
                    Text(label,
                        style: TextStyle(
                            fontSize: 18, color: Colors.white)),
                  ],
                ),
                trailing: SizedBox()),
          ),
          Divider(height: 1, color: HexColor("353742"))
          // Divider(height: 1, color: HexColor("616575"))
        ],
      ),
    );
  }
}
