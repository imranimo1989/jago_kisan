import 'package:flutter/material.dart';
import 'package:jago_kisan/app_color.dart';
import 'package:jago_kisan/bottom_nav_bar.dart';
import 'package:jago_kisan/widget/screen_background.dart';

import '../custom_method/page_route_builder.dart';

class FarmingDetailsScreen extends StatelessWidget {
  const FarmingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenBackground(
          child: SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Stack(
                  children: [
                    Positioned(
                      top: 40,
                      left: 30,
                      child: Image.asset(
                        "assets/icon/back.png",
                        height: 30,
                        fit: BoxFit.contain,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      splashColor: Colors.grey,
                      child: Center(
                        child: Image.asset(
                          "assets/images/logo.png",
                          height: 100,
                          width: 100,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ],
                ),
                const Center(
                  child: Text(
                    "Farming Details",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",

                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                FarmingDetailsTextInputField(labelText: 'Enter Your Crop Type'),
                FarmingDetailsTextInputField(labelText: 'Enter Your Soil Type'),
                FarmingDetailsTextInputField(labelText: 'Enter Your Climate'),
                FarmingDetailsTextInputField(labelText: 'Farm Size and Layout'),
                FarmingDetailsTextInputField(labelText: 'Pest and disease'),
                FarmingDetailsTextInputField(labelText: 'Farming equipment'),
                FarmingDetailsTextInputField(labelText: 'Economic Information'),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 4,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          CustomPageRoute(
                            builder: (context) => const BottomNavBarScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          foregroundColor: Colors.black),
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(fontWeight: FontWeight.bold,                      fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FarmingDetailsTextInputField extends StatelessWidget {
  FarmingDetailsTextInputField({super.key, required this.labelText});

  String labelText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0,
                blurRadius:3,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: labelText,
              labelStyle: const TextStyle(color: Colors.black,fontFamily: "Poppins",),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(
                          width: 2,
                          color: AppColors.primaryColorDeep),
                  borderRadius: BorderRadius.circular(30)),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 2,
                    color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
