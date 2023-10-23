import 'package:flutter/material.dart';

class ScreenBackground extends StatelessWidget {
  final Widget child;
  const ScreenBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          'assets/images/background1.png',
          width: screenSize.width,
          height: screenSize.height,
          fit: BoxFit.fill,
        ),
        child
      ],
    );
  }
}

class HomeScreenBackground extends StatelessWidget {
  final Widget child;
  const HomeScreenBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          'assets/images/background2.png',
          width: screenSize.width,
          height: screenSize.height,
          fit: BoxFit.fill,
        ),
        child
      ],
    );
  }
}