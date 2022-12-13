import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travel/constants.dart';
import 'package:travel/screens/user%20screens/dashboard.dart';
import 'package:travel/util/custom_button.dart';
import 'package:travel/util/custom_clipper2.dart';

import '../util/otp_pin.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key, required this.phoneNumber})
      : super(key: key);

  final String countryCode = "+91";
  final String phoneNumber;

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController controller4 = TextEditingController();
  final TextEditingController controller5 = TextEditingController();
  final TextEditingController controller6 = TextEditingController();

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    controller6.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: ClipPath(
          clipper: MyClipper2(),
          child: Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              gradient: kLinearGradient,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: size.height * 0.68,
                  left: 150,
                  child: Transform.rotate(
                    angle: pi / 5,
                    child: Image.asset(
                      "assets/sedan-car-model.png",
                      color: kScaffoldBackgroundColor,
                      height: 80,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 150,
                  right: 70,
                  child: Transform.rotate(
                    angle: pi / 28,
                    child: Image.asset(
                      "assets/tree.png",
                      color: kScaffoldBackgroundColor,
                      height: 60,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 280,
                  left: 30,
                  child: Transform.rotate(
                    angle: pi / 28,
                    child: Image.asset(
                      "assets/palm-tree.png",
                      color: kScaffoldBackgroundColor,
                      height: 60,
                    ),
                  ),
                ),
                SafeArea(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Custom App Bar
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 30),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_outlined,
                                  color: Colors.white,
                                  size: 26,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Verify OTP",
                                style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Enter the code sent to mobile number",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "+91-${widget.phoneNumber}",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        //  OTP TextField
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OtpPin(
                                  controller: controller1,
                                  first: true,
                                  last: false),
                              OtpPin(
                                  controller: controller2,
                                  first: false,
                                  last: false),
                              OtpPin(
                                  controller: controller3,
                                  first: false,
                                  last: false),
                              OtpPin(
                                  controller: controller4,
                                  first: false,
                                  last: false),
                              OtpPin(
                                  controller: controller5,
                                  first: false,
                                  last: false),
                              OtpPin(
                                  controller: controller6,
                                  first: false,
                                  last: true),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomButton(
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dashboard()),
                                (route) => false);
                          },
                          text: "VERIFY & PROCEED",
                          outerPadding: EdgeInsets.symmetric(horizontal: 40),
                          color: kScaffoldBackgroundColor,
                        )
                      ],
                    ),
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
