import 'package:flutter/material.dart';
import 'package:freshh/features/account/settings/account_settings_screen.dart';
import 'package:freshh/features/account/settings/notification_settings_screen.dart';
import 'package:freshh/features/account/settings/privacy_settings_screen.dart';
import 'package:get/get.dart';

import '../../main.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: HexColor("B00FE1"), // AppBar arka plan rengi
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Account Settings'),
              leading: Icon(Icons.account_circle, color: HexColor("B00FE1")), // Sol tarafta simge
              onTap: () {
                Get.to(() => AccountSettingsScreen());
              },
            ),
            Divider(), // Ayırıcı çizgi
            ListTile(
              title: Text('Notification Settings'),
              leading: Icon(Icons.notifications, color: HexColor("B00FE1")), // Sol tarafta simge
              onTap: () {
                Get.to(() => NotificationSettingsScreen());
              },
            ),
            Divider(), // Ayırıcı çizgi
            ListTile(
              title: Text('Privacy Settings'),
              leading: Icon(Icons.privacy_tip, color: HexColor("B00FE1")), // Sol tarafta simge
              onTap: () {
                Get.to(() => PrivacySettingsScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
