import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freshh/features/account/about_screen.dart';
import 'package:freshh/features/account/components/text_outlined_button.dart';
import 'package:freshh/features/account/privacy_screen.dart';
import 'package:freshh/features/account/settings_screen.dart';
import 'package:freshh/features/introduction_animation/introduction_animation_screen.dart';
import 'package:freshh/globals.dart' as globals;
import 'package:freshh/main.dart';
import 'package:get/get.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: HexColor("#ffffff"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Image.network(
                          FirebaseAuth.instance.currentUser?.photoURL ?? "https://assets.stickpng.com/images/585e4bf3cb11b227491c339a.png",
                          width: 120,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${globals.user!.name} ${globals.user!.surname}' ?? 'xxx',
                          style: const TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold)),
                    ),
                    Text(globals.user!.email.toString() ?? 'xxx', style: TextStyle(color: HexColor("B00FE1"), fontSize: 17)),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: OutlinedButtonWithText(
                        width: 150,
                        content: "View Profile",
                        onPressed: () {
                          // Get.to(() => ProfilePage());
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    buildListTile("Settings", "Configure your preferences", Icons.settings, const SettingsScreen()),
                    const SizedBox(height: 10),
                    buildListTile("About", "Learn more about us", Icons.info, const AboutScreen()),
                    const SizedBox(height: 10),
                    buildListTile("Privacy Policy", "View our privacy policy", Icons.privacy_tip, const PrivacyScreen()),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        FirebaseAuth.instance.signOut();
                        Get.offAll(const IntroductionAnimationScreen());
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: HexColor('B00FE1'), // Renk değiştirildi
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.logout, // Çıkış simgesi
                              color: Colors.white,
                            ),
                            SizedBox(width: 10), // Simge ile metin arasında boşluk
                            Text(
                              "Log Out",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildListTile(String title, String subtitle, IconData iconData, Widget onClick) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    subtitle: Text(
      subtitle,
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey[600],
      ),
    ),
    trailing: Icon(
      iconData,
      color: HexColor("B00FE1"),
    ),
    onTap: () {
      Get.to(() => onClick);
    },
  );
}
