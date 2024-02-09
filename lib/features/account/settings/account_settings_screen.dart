import 'package:flutter/material.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Settings'),
        backgroundColor: Color(0xFFB00FE1), // AppBar arka plan rengi
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your full name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Password',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your new password',
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Parolanın gizli olduğunu belirtmek için
            ),
            SizedBox(height: 20),
            Text(
              'Again Password',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your new password again',
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Parolanın gizli olduğunu belirtmek için
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Password değiştirme işlemi
              },
              child: Text('Change Password'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFB00FE1), // Düğme rengi
              ),
            ),
          ],
        ),
      ),
    );
  }
}
