import 'package:flutter/material.dart';

import '../../../main.dart';

class PrivacySettingsScreen extends StatefulWidget {
  const PrivacySettingsScreen({Key? key}) : super(key: key);

  @override
  _PrivacySettingsScreenState createState() => _PrivacySettingsScreenState();
}

class _PrivacySettingsScreenState extends State<PrivacySettingsScreen> {
  bool _isPrivateAccount = true; // Hesabın gizli olup olmadığını tutar
  bool _isLocationShared = true; // Konumun paylaşılıp paylaşılmadığını tutar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Settings'),
        backgroundColor: Color(0xFFB00FE1), // AppBar arka plan rengi
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account Privacy',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Private Account',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Switch(
                  value: _isPrivateAccount,
                  onChanged: (value) {
                    setState(() {
                      _isPrivateAccount = value;
                    });
                  },
                  activeColor: Color(0xFFB00FE1), // Açık durum rengi
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Location Privacy',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Share My Location',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Switch(
                  value: _isLocationShared,
                  onChanged: (value) {
                    setState(() {
                      _isLocationShared = value;
                    });
                  },
                  activeColor: Color(0xFFB00FE1), // Açık durum rengi
                ),
              ],
            ),
            SizedBox(height: 10),
            Visibility(
              visible: _isLocationShared,
              child: ListTile(
                title: Text('Location Sharing Options'),
                leading: Icon(Icons.settings,
                    color: HexColor("B00FE1")), // Sol tarafta simge
                onTap: () {
                  // Konum paylaşma seçenekleri
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
