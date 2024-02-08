import 'package:flutter/material.dart';

import '../../../main.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({Key? key}) : super(key: key);

  @override
  _NotificationSettingsScreenState createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
  bool _isEnabled = true; // Bildirimlerin etkin mi pasif mi olduğunu tutar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Settings'),
        backgroundColor: Color(0xFFB00FE1), // AppBar arka plan rengi
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Allow Notifications',
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
                  'Enable Notifications',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Switch(
                  value: _isEnabled,
                  onChanged: (value) {
                    setState(() {
                      _isEnabled = value;
                    });
                  },
                  activeColor: Color(0xFFB00FE1), // Açık durum rengi
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Notification Sound',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('Default Sound'),
              leading: Icon(Icons.volume_up,
                  color: HexColor("B00FE1")), // Sol tarafta simge
              onTap: () {
                // Bildirim sesi seçimi
              },
            ),
          ],
        ),
      ),
    );
  }
}
