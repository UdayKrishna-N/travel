import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberTextField extends StatelessWidget {
   NumberTextField({super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 60.0),
        child: TextField(
          controller: controller,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black),
          keyboardType: TextInputType.phone,
          autofocus: false,
          enableInteractiveSelection: false,
          inputFormatters: [
            LengthLimitingTextInputFormatter(10),
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Mobile Number",
          ),
        ),
      ),
    );
  }
}