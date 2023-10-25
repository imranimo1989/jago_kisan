import 'package:flutter/material.dart';
import 'package:jago_kisan/app_color.dart';
import '../widget/screen_background.dart';
import '../widget/snac_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HomeScreenBackground(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 100,
                  width: 100,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      showSnackMessage(context,"Not Functional yet, please wait for next version"
                      );
                      print("Back");
                    },
                    child: Image.asset(
                      "assets/icon/back.png",
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 300,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "Select State/Country",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins",
                                fontSize: 18),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showSnackMessage(context,"Not Functional yet, please wait for next version");
                            print("Icon");
                          },
                          icon: const Icon(Icons.arrow_drop_down),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio:5.0,
                  crossAxisSpacing: 16,
                  mainAxisExtent: 170,
                  mainAxisSpacing: 16,
                  // Number of columns

                ),
                itemCount: 6, // Number of items in the grid
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: Colors.grey,
                    onTap: (){

                      showSnackMessage(context,"Not Functional yet, please wait for next version");
                    },

                      child: const HomeItemFarmer());
                },
              ),
            ),
          )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeItemFarmer extends StatelessWidget {
  const HomeItemFarmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 130,
      decoration: BoxDecoration(
          border: Border.all(width: 1, style: BorderStyle.solid,color: Colors.grey.shade500),
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[300]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo.png",
            height: 70,
            fit: BoxFit.fill,
          ),
          const Text(
            "Jhon Doe",
            style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Expert In:",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Poppins",
                      color: AppColors.primaryColorDeep,
                      fontWeight: FontWeight.bold),
                ),
                 Row(
                  children: [
                    const Expanded(
                      flex:4,

                      child: Text(
                        " Floricultural crop "
                        "\n production",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: InkWell(onTap:(){},
                        child:  const Icon(Icons.arrow_drop_down,color: AppColors.primaryColorDeep,size: 36,)),),

                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
