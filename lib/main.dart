import 'package:flutter/material.dart';
import 'package:jago_kisan/app_color.dart';
import 'package:jago_kisan/screens/expert_in_details_screen.dart';
import 'package:jago_kisan/screens/get_started_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    const customTextTheme = TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Poppins', // Replace 'Poppins' with the desired fontFamily
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Poppins', // Replace 'Poppins' with the desired fontFamily
        fontSize: 15.0,
        fontWeight: FontWeight.normal,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Poppins', // Replace 'Poppins' with the desired fontFamily
        fontSize: 10.0,
        fontWeight: FontWeight.normal,
      ),
      // Add more text styles as needed
    );


    return MaterialApp(
      title: 'Jago Kisan App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.primaryColor
        ),
        textTheme: customTextTheme,
        useMaterial3: true,
      ),
      home:  const GetStartedScreen(),
    );
  }
}

