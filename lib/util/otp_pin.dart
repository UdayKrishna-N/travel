// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';


class OtpPin extends StatelessWidget {



  TextEditingController controller = TextEditingController();
  final bool first, last;

  OtpPin({super.key, required this.controller, required this.first, required this.last});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: kScaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: AspectRatio(
        aspectRatio: 0.9/1,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: TextField(
            controller: controller,
            onChanged: (value){
              if (value.isNotEmpty && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.isEmpty && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            readOnly: false,
            showCursor: true,
            autofocus: true,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
