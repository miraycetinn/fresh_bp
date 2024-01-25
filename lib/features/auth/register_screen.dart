import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshh/features/auth/utils/auth_utils.dart';
import 'package:freshh/freshh_app_home_screen.dart';
import 'package:freshh/models/user/user_model.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  static TextEditingController registerNameTextController =
      TextEditingController();
  static TextEditingController registerEmailTextController =
      TextEditingController();
  static TextEditingController registerPasswordTextController =
      TextEditingController();
  static TextEditingController registerPasswordTwoTextController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              'assets/bubble.svg',
              height: 150,
              width: 150,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to Fresh!',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  width: 300,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFECECEC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Opacity(
                    opacity: 0.4,
                    child: TextField(
                      controller: registerNameTextController,
                      decoration: const InputDecoration(
                        hintText: 'Enter your full name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFECECEC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Opacity(
                    opacity: 0.4,
                    child: TextField(
                      controller: registerEmailTextController,
                      decoration: const InputDecoration(
                        hintText: 'Enter your email',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFECECEC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Opacity(
                    opacity: 0.4,
                    child: TextField(
                      controller: registerPasswordTextController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Enter password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFECECEC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Opacity(
                    opacity: 0.4,
                    child: TextField(
                      controller: registerPasswordTwoTextController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Confirm password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ElevatedButton(
                      onPressed: () {
                        if (registerNameTextController.value.text == "" ||
                            registerEmailTextController.value.text == "" ||
                            registerPasswordTextController.value.text == "" ||
                            registerPasswordTwoTextController.value.text ==
                                "") {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alertBlankArea;
                              });
                        } else if (!(registerEmailTextController
                            .value.text.isEmail)) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alertOnWrongEmail;
                              });
                        } else if (!(registerPasswordTextController
                                .value.text ==
                            registerPasswordTwoTextController.value.text)) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alertOnPasswordNotMatching;
                              });
                        } else {
                          Authentication()
                              .createUser(UserModel(
                                  id: 'globals.user.id',
                                  name: registerNameTextController.text
                                      .split(" ")[0],
                                  surname: registerNameTextController.text
                                      .split(" ")[1],
                                  email: registerEmailTextController.text,
                                  password:
                                      registerPasswordTextController.text))
                              .then((value) =>
                                  Get.to(const FreshhAppHomeScreen()))
                              .catchError((onError) {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text(
                                  "Kayıt Yapılırken Hata İle Karşılaşıldı"),
                              backgroundColor: Colors.red,
                            ));
                            return null;
                          });
                        }
                        // Butona tıklandığında yapılacak işlemler burada yer alır.
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6179CD),
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

AlertDialog alertBlankArea = const AlertDialog(
  title: Text("Boş Alan"),
);
AlertDialog alertOnWrongEmail = const AlertDialog(
  title: Text("Hatalı Email"),
);
AlertDialog alertOnPasswordNotMatching = const AlertDialog(
  title: Text("Şifreler uyuşmuyor"),
);
