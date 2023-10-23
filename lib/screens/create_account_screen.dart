import 'package:flutter/material.dart';
import 'package:jago_kisan/screens/verification_screen.dart';
import 'package:jago_kisan/widget/screen_background.dart';

import '../custom_method/page_route_builder.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenBackground(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Create Account",
                    style: TextStyle(
                        fontFamily: "Poppins",

                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CreateAccountEditTextField(
                    imageSource: 'assets/form_input_bg/name.png',
                    hintText: 'Full Name',
                    textInputType: TextInputType.name,
                    obscureText: false,
                  ),
                  const SizedBox(height: 12),
                  CreateAccountEditTextField(
                    imageSource: 'assets/form_input_bg/email.png',
                    hintText: 'Email Address',
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                  ),
                  const SizedBox(height: 12),
                  CreateAccountEditTextField(
                    imageSource: 'assets/form_input_bg/phone.png',
                    hintText: 'Phone',
                    textInputType: TextInputType.number,
                    obscureText: false,
                  ),
                  const SizedBox(height: 12),
                  CreateAccountEditTextField(
                    imageSource: 'assets/form_input_bg/pass.png',
                    hintText: 'Password',
                    textInputType: TextInputType.text,
                    obscureText: true,
                  ),
                  const SizedBox(height: 12),
                  CreateAccountEditTextField(
                    imageSource: 'assets/form_input_bg/com_pass.png',
                    hintText: 'Confirm Password',
                    textInputType: TextInputType.text,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomAppButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        CustomPageRoute(
                          builder: (context) => const VerificationScreen(),
                        ),
                      );
                    },
                    imageSource: 'assets/form_input_bg/login.png',
                    buttonText: 'NEXT',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAppButton extends StatelessWidget {
  CustomAppButton(
      {super.key,
      required this.onPressed,
      required this.imageSource,
      required this.buttonText});

  String imageSource;
  String buttonText;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  imageSource,
                ),
                fit: BoxFit.contain),
          ),
          child: Center(
              child: Text(
            buttonText,
            style: const TextStyle(
                fontFamily: "Poppins",

                fontWeight: FontWeight.w800, fontSize: 24, color: Colors.black),
          )),
        ),
      ),
    );
  }
}

class CreateAccountEditTextField extends StatelessWidget {
  CreateAccountEditTextField(
      {super.key,
      required this.imageSource,
      required this.hintText,
      required this.obscureText,
      required this.textInputType});

  String imageSource;
  String hintText;
  bool obscureText;
  TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        alignment: Alignment.center,
        height: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imageSource), alignment: Alignment.centerLeft),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: TextField(
            keyboardType: textInputType,
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none, // Removes underline and decoration
            ),
            obscureText: obscureText,
          ),
        ),
      ),
    );
  }
}
