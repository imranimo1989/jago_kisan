import 'package:flutter/material.dart';
import 'package:jago_kisan/app_color.dart';
import 'package:jago_kisan/screens/login_screen.dart';
import 'package:jago_kisan/widget/screen_background.dart';

import '../custom_method/page_route_builder.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenBackground(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                const SizedBox(
                  height: 8,
                ),
                Image.asset(
                  "assets/images/cover.png",
                  height: 350,
                  fit: BoxFit.contain,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Without Agriculture  we can’t survive on this planet",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w800,
                      color: AppColors.primaryColorDeep,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      CustomPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 70,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/rectangle_button.png",
                          ),
                          fit: BoxFit.contain),
                    ),
                    child: const Center(
                        child: Text(
                      "Get Started",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontFamily: "Poppins",
                          fontSize: 24,
                          color: Colors.black),
                    )),
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
