import 'package:flutter/material.dart';
import 'package:freshh/features/auth/utils/auth_utils.dart';
import 'package:freshh/features/core/widget/custom_progress_indicator.dart';
import 'package:freshh/models/user_skincare_history/user_skincare_history.dart';

import '../../../main.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key, required this.isMorning, required this.isWater}) : super(key: key);
  final bool isMorning;
  final bool isWater;

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  late List<String> _historyList;

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
                _historyList = _isAscending ? _historyList.reversed.toList() : _historyList;
              });
            },
          ),
        ],
      ),
      body: FutureBuilder(
          future: UserSkincareHistoryRef.doc(Authentication().auth.currentUser!.uid).get(),
          builder: (context, _) {
            if (_.connectionState != ConnectionState.done) return CustomProgressIndicator();
            List<dynamic>? list = widget.isWater
                ? _.data?.data?.historyOfWater
                : widget.isMorning
                    ? _.data?.data?.historyOfMorning
                    : _.data?.data?.historyOfNight;
            _historyList = list!.map((e) =>
                "${e.dateTime.year}-${e.dateTime.month}-${e.dateTime.day}\t ${e.dateTime.hour}:${e.dateTime.minute} \t ${e.action ? "Yapıldı" : "Geri Alındı"}    ${widget.isWater ? '' : e.skincareListRef + "kodlu ürün"}").toList();
            _historyList = _isAscending ? _historyList.reversed.toList() : _historyList;

            return Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.isWater
                        ? 'Su içme geçmişi'
                        : widget.isMorning
                            ? "Sabah cilt bakım geçmişi"
                            : "Akşam cilt bakım geçmişi",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: HexColor("B00FE1"), // Başlık rengi
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: list?.length,
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
            );
          }),
    );
  }
}
