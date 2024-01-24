import 'package:flutter/material.dart';
import 'package:freshh/features/Buttons/primary_progress_button.dart';
import 'package:freshh/features/DarkBackground/darkRadialBackground.dart';
import 'package:freshh/features/account/components/text_outlined_button.dart';
import 'package:freshh/features/dummy/profile_dummy.dart';
import 'package:freshh/main.dart';
import 'package:freshh/models/skincare_concern/skincare_concern.dart';
import 'package:freshh/models/skincare_history_data/skincare_history_data.dart';
import 'package:freshh/models/skincares_list_data/skincares_list_data.dart';
import 'package:freshh/models/user/user.dart';

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
                      child: ProfileDummy(
                          color: HexColor("94F0F1"),
                          dummyType: ProfileDummyType.Image,
                          scale: 3.0,
                          image: "assets/man-head.png"),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Miray Çetin",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text("mirayccetin@gmail.com",
                        style:
                            TextStyle(color: HexColor("B0FFE1"), fontSize: 17)),
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
                          children: const [
                            Text("Ayarlar",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold)),
                            PrimaryProgressButton(
                              width: 90,
                              height: 40,
                              label: "Git",
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
                          children: const [
                            Text("Hakkında",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold)),
                            PrimaryProgressButton(
                              width: 90,
                              height: 40,
                              label: "Git",
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
                          children: const [
                            Text("Gizlilik sözleşmesi",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold)),
                            PrimaryProgressButton(
                              width: 90,
                              height: 40,
                              label: "Git",
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
                    Container(
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
                    FutureBuilder(

                        future: SkincareHistoryDataRef.get(),
                        builder: (context,data){
                          if (data.data == null){return Text(data.error.toString(),style: TextStyle(color: Colors.black));}
                      return FutureBuilder(

                          future: SkincareListDataRef.doc(data.data!.docs[0].data.skincareListDataReferance.toString()).get(),

                          builder: (context,datas){
                            if (datas.data == null){return Text("bosssss",style: TextStyle(color: Colors.black));}

                            return Text(datas.data!.data!.titleTxt.toString(),style: TextStyle(color: Colors.black),);
                      });




                    }
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
