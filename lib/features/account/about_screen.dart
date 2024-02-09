import 'package:flutter/material.dart';

import '../../main.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: HexColor("B00FE1"), // AppBar arka plan rengi
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Biz Kimiz?',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: HexColor("B00FE1") // Başlık rengi
                  ),
            ),
            SizedBox(height: 10),
            Text(
              'Fresh App, günlük yaşam rutinlerini planlamak ve takip etmek için bir uygulamadır. Kullanıcılar, günlük aktivitelerini, alışkanlıklarını ve hedeflerini düzenleyebilir, izleyebilir ve analiz edebilir.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'İletişim',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: HexColor("B00FE1"), // Başlık rengi
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.location_on,
                  color: HexColor("B00FE1")), // Sol tarafta simge
              title: Text(
                'Adres: Fresh App Şirketi, İstanbul, Türkiye',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone,
                  color: HexColor("B00FE1")), // Sol tarafta simge
              title: Text(
                'Telefon: +90 123 456 78 90',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email,
                  color: HexColor("B00FE1")), // Sol tarafta simge
              title: Text(
                'E-posta: info@freshapp.com',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
