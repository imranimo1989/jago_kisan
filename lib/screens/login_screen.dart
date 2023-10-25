import 'package:flutter/material.dart';
import 'package:jago_kisan/app_color.dart';
import 'package:jago_kisan/screens/create_account_screen.dart';
import 'package:jago_kisan/widget/screen_background.dart';

import '../custom_method/page_route_builder.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenBackground(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Center(
                    child: Text("Welcome To",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w800,
                            color: AppColors.primaryColorDeep))),
                Image.asset(
                  "assets/images/logo.png",
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: 320,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/login_cover.png",
                        ),
                        fit: BoxFit.fill),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Image.asset(
                            "assets/images/farmer_image.png",
                            height: 150,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            LoginTextField(
                              controller: TextEditingController(),
                              labelText: 'Enter your e-mail',
                              icon: Icons.person,
                              obscureText: false,
                            ),
                            LoginTextField(
                              controller: TextEditingController(),
                              labelText: "Password",
                              icon: Icons.lock,
                              obscureText: true,
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Or Sign In Using",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/icon/fb.png"),
                                const SizedBox(
                                  width: 8,
                                ),
                                Image.asset("assets/icon/google.png"),
                                const SizedBox(
                                  width: 8,
                                ),
                                Image.asset("assets/icon/twitter.png"),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          CustomPageRoute(
                            builder: (context) => const CreateAccountScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.centerLeft,
                            image: AssetImage(
                              "assets/images/lang_button.png",
                            ),
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginTextField extends StatelessWidget {
  LoginTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.icon,
    required this.obscureText,
  });

  String labelText;
  IconData icon;
  TextEditingController controller;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(
          icon,
          color: Colors.white, // White icon
        ),
        labelStyle: const TextStyle(
          color: Colors.white,
          fontFamily: "Poppins",
        ),
        hintStyle: const TextStyle(
          color: Colors.white,
          fontFamily: "Poppins",
        ),
        // White hint text

        // White text
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white), // White border
        ),
      ),
      obscureText: obscureText,
    );
  }
}
