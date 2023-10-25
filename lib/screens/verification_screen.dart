import 'package:flutter/material.dart';
import 'package:jago_kisan/app_color.dart';
import 'package:jago_kisan/screens/farming_details_screen.dart';
import 'package:jago_kisan/widget/screen_background.dart';
import 'package:jago_kisan/widget/snac_bar.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../custom_method/page_route_builder.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenBackground(
          child: SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Stack(
                  children: [
                    Positioned(
                      top: 40,
                      left: 30,
                      child: InkWell(
                        splashColor: Colors.grey,
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Image.asset(
                          "assets/icon/back.png",
                          height: 30,
                          width: 30,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        "assets/images/logo_with_circle.png",
                        height: 120,
                        width: 120,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Center(
                  child: Text(
                    "Verify Phone",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  height: 2,
                  width: 170,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Code sent to 016120723297",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                PinCodeTextField(
                  length: 4,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    activeColor: Colors.green,
                    selectedFillColor: Colors.white,
                    errorBorderColor: Colors.red,
                    selectedColor: AppColors.primaryColor,
                    inactiveFillColor: Colors.white,
                    inactiveColor: Colors.black38,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(12),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    activeFillColor: Colors.white,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  controller: null,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {},
                  appContext: context,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't receive code?"),
                    TextButton(
                      onPressed: () {
                        showSnackMessage(context,"Not Functional yet, please wait for next version");
                      },
                      child: const Text(
                        "Request Again",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    showSnackMessage(context,"Not Functional yet, please wait for next version");
                  },
                  child: const Text(
                    "Get Via Call",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FarmingDetailsScreen()), // Navigate to the second screen
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor),
                      child: const Text(
                        "Verify",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
