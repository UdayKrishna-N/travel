// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../constants.dart';

class Logout extends StatelessWidget {
  Logout({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Log out",
                style: TextStyle(
                    fontSize: 18,
                    color: kScaffoldBackgroundColor
                ),
              ),
              Spacer(),
              Icon(Icons.logout,color: kScaffoldBackgroundColor,size: 20,),
            ],
          ),
        ),
      ),
    );
  }
}