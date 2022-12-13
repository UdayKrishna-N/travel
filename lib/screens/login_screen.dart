import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travel/constants.dart';
import 'package:travel/screens/verification.dart';
import 'package:travel/util/custom_button.dart';

import '../util/custom_clipper1.dart';
import '../util/number_textfield.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 final TextEditingController controller = TextEditingController();

 @override
  void dispose() {
    controller.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Custom Login Title Header
              ClipPath(
                clipper: MyClipper1(),
                child: Container(
                  width: double.infinity,
                  height: size.height * 0.4,
                  decoration: BoxDecoration(gradient: kLinearGradient),
                  child: SafeArea(
                    child: Stack(
                      children: [
                        // Title
                        Positioned(
                          top: 65,
                          left: 25,
                          child: Text(
                            "RMS Travels",
                            style: Theme.of(context).textTheme.headline2?.copyWith(color: Colors.white, fontFamily: "BebasNeue"),
                          ),
                        ),
                        Positioned(
                          left: 28,
                          top: 125,
                          child: Text(
                            "Let's Ride Together!..",
                            style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white,letterSpacing: 3, fontFamily: "BebasNeue"),
                          ),
                        ),
                        Positioned(
                          right: 100,
                          bottom: 5,
                          child: Transform.rotate(
                            angle: pi / 9,
                            child: Image.asset(
                              "assets/sedan-car-model.png",
                              color: kScaffoldBackgroundColor,
                              height: 80,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 20,
                          bottom: 0,
                          child: Transform.rotate(
                            angle: 0,
                            child: Image.asset(
                              "assets/palm-tree.png",
                              color: kScaffoldBackgroundColor,
                              height: 80,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 180,
                          left: 30,
                          child: Transform.rotate(
                            angle: 0,
                            child: Image.asset(
                              "assets/palm-tree.png",
                              color: kScaffoldBackgroundColor,
                              height: 60,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 180,
                          left: 90,
                          child: Transform.rotate(
                            angle: 0,
                            child: Image.asset(
                              "assets/tree.png",
                              color: kScaffoldBackgroundColor,
                              height: 60,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Text(
                "Enter the Mobile Number",
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Stack(
                  children: [
                    // TextField for mobile number
                    NumberTextField(
                      controller: controller,
                    ),
                    Positioned(
                      top: 13,
                      left: 15,
                      child: Text(
                        "+91",style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Button for Login
              CustomButton(
                outerPadding: EdgeInsets.symmetric(horizontal: 30),
                text : "CONTINUE",
                gradient: kLinearGradient,
                onTap: () {
                if (controller.text.length == 10) {
                  String number = controller.text;
                  FocusScope.of(context).unfocus();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerificationScreen(phoneNumber: number,),
                    ),
                  );
                }
              },
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      indent: 75,
                      endIndent: 20,
                    ),
                  ),
                  Text(
                    "or",
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      endIndent: 75,
                      indent: 20,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


