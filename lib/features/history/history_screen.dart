import 'package:flutter/material.dart';
import '../../../main.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List<String> _historyList = [
    "22.02.2024 - Yemek yapma",
    "21.02.2024 - Spor yapma",
    "20.02.2024 - Kitap okuma",
    "19.02.2024 - Yoga yapma",
    "18.02.2024 - Yürüyüş yapma",
    "17.02.2024 - Meditasyon yapma",
    "16.02.2024 - Film izleme",
    "15.02.2024 - Müzik dinleme",
  ]; // Geçmiş etkinlikler listesi

  bool _isAscending = true; // Sıralama durumunu tutar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: HexColor("B00FE1"), // AppBar arka plan rengi
        actions: [
          IconButton(
            icon: Icon(
              _isAscending ? Icons.arrow_upward : Icons.arrow_downward,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _isAscending = !_isAscending;
                _historyList = _isAscending
                    ? _historyList.reversed.toList()
                    : _historyList;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search,
                    color: HexColor("B00FE1")), // Arama ikonu rengi
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tarih Bazlı Geçmiş Etkinlikler',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: HexColor("B00FE1"), // Başlık rengi
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _historyList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      _historyList[index],
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    onTap: () {
                      // Tıklama işlemleri
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
