import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freshh/features/account/components/Buttons/primary_progress_button.dart';
import 'package:freshh/features/account/components/text_outlined_button.dart';
import 'package:freshh/features/introduction_animation/introduction_animation_screen.dart';
import 'package:freshh/globals.dart' as globals;
import 'package:freshh/main.dart';
import 'package:freshh/models/skincare_history_data/skincare_history_data.dart';
import 'package:freshh/models/skincares_list_data/skincares_list_data.dart';
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
                          FirebaseAuth.instance.currentUser?.photoURL ??
                              "https://assets.stickpng.com/images/585e4bf3cb11b227491c339a.png",
                          width: 120,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          '${globals.user!.name} ${globals.user!.surname}' ??
                              'xxx',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text(globals.user!.email.toString() ?? 'xxx',
                        style:
                            TextStyle(color: HexColor("B00FE1"), fontSize: 17)),
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
                    Container(
                      width: double.infinity,
                      height: 70,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: HexColor("5C5EDD"),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Settings",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold)),
                            PrimaryProgressButton(
                              width: 90,
                              height: 40,
                              label: "Go",
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 70,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: HexColor("5C5EDD"),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("About",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold)),
                            PrimaryProgressButton(
                              width: 90,
                              height: 40,
                              label: "Go",
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 70,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: HexColor("5C5EDD"),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Privacy Policy",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold)),
                            PrimaryProgressButton(
                              width: 90,
                              height: 40,
                              label: "Go",
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        FirebaseAuth.instance.signOut();
                        Get.offAll(IntroductionAnimationScreen());
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            color: HexColor("5C5EDD"),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text("Log Out",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    FutureBuilder(
                        future: SkincareHistoryDataRef.get(),
                        builder: (context, data) {
                          if (data.data == null) {
                            return Text(data.error.toString(),
                                style: const TextStyle(color: Colors.black));
                          }
                          return FutureBuilder(
                              future: SkincareListDataRef.doc(data.data!.docs[0]
                                      .data.skincareListDataReferance
                                      .toString())
                                  .get(),
                              builder: (context, datas) {
                                if (datas.data == null) {
                                  return const Text("bosssss",
                                      style: TextStyle(color: Colors.black));
                                }

                                return Text(
                                  datas.data!.data!.titleTxt.toString(),
                                  style: const TextStyle(color: Colors.black),
                                );
                              });
                        }),
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
