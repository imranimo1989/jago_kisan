import 'package:flutter/material.dart';

import '../widget/screen_background.dart';
import '../widget/snac_bar.dart';

class ExpertInDetailsScreen extends StatefulWidget {
  const ExpertInDetailsScreen({super.key});

  @override
  State<ExpertInDetailsScreen> createState() => _ExpertInDetailsScreenState();
}

class _ExpertInDetailsScreenState extends State<ExpertInDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HomeScreenBackground(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    showSnackMessage(context,"Not Functional yet, please wait for next version");
                  },
                  child: Center(
                    child: Image.asset(
                      "assets/images/logo.png",
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Image.asset(
                  "assets/icon/back.png",
                  height: 30,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
