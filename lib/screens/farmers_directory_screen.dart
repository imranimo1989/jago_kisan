import 'package:flutter/material.dart';
import 'package:jago_kisan/app_color.dart';
import 'package:jago_kisan/screens/expert_in_details_screen.dart';
import '../custom_method/page_route_builder.dart';
import '../widget/screen_background.dart';

class FarmerDirectoryScreen extends StatefulWidget {
  const FarmerDirectoryScreen({super.key});

  @override
  State<FarmerDirectoryScreen> createState() => _FarmerDirectoryScreenState();
}

class _FarmerDirectoryScreenState extends State<FarmerDirectoryScreen> {
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
                Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 100,
                    width: 100,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                InkWell(
                  onTap: () {
                    showSnackMessage(context,"Not Functional yet, please wait for next version");
                  },
                  child: Image.asset(
                    "assets/icon/back.png",
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Search",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SearchField(
                  labelText: 'Search',
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Vegetables crops expert",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 24,
                ),
                VegetableCropsExpert(
                  expertIn: " Vegetables Disease Management",
                  imageSource: "assets/images/profilephoto1.png",
                  onTap: () {
                    showSnackMessage(context,
                        "Not Functional yet, please wait for next version");
                  },
                ),
                VegetableCropsExpert(
                  expertIn: " Leafy Vegetables",
                  imageSource: "assets/images/profilephoto2.png",
                  onTap: () {
                    showSnackMessage(context,
                        "Not Functional yet, please wait for next version");
                  },
                ),
                VegetableCropsExpert(
                  expertIn: " Pesticide use in fruits and vegetables",
                  imageSource: "assets/images/profilephoto3.png",
                  onTap: () {
                    showSnackMessage(context,
                        "Not Functional yet, please wait for next version");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VegetableCropsExpert extends StatelessWidget {
  const VegetableCropsExpert(
      {super.key,
      required this.imageSource,
      required this.expertIn,
      required this.onTap});

 final String imageSource;
  final String expertIn;
 final  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Expert In:",
                    style: TextStyle(
                        color: AppColors.primaryColorDeep,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: AppColors.primaryColorDeep,
                        ),
                        Expanded(
                            child: Text(
                          expertIn,
                          style: const TextStyle(fontSize: 20),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
              imageSource,
              height: 98,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({super.key, required this.labelText});

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey.shade300,
            ),
            suffixIcon: Icon(
              Icons.cancel,
              color: Colors.grey.shade300,
            ),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.grey.shade500),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(30)),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
