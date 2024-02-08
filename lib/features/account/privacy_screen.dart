import 'package:flutter/material.dart';

import '../../main.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("B00FE1"),
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // Appbar'ı saydthrough transparent yap
        elevation: 0, // Appbar'ın gölgesini kaldır
        title: Text(
          'Privacy Policy',
          style: TextStyle(
            color: Colors.white, // Başlık rengini beyaz yap
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Our Privacy Policy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Eğer gizlilik politikası sayfasını görmek için bir buton eklemek istiyorsanız burada bir işlev tanımlayabilirsiniz.
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: HexColor("B00FE1"),
              ),
              child: Text(
                'Read More',
                style: TextStyle(
                  color: HexColor("B00FE1"),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
