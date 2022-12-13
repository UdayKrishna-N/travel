// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:travel/screens/login_screen.dart';
import 'package:travel/screens/user%20screens/rides.dart';

import 'account_tile.dart';
import 'details.dart';
import '../account_screen/logout.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20, right: 20),
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
                    width: 30,
                  ),
                  Text(
                    "Account Details",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/191811121.png",),
            ),
            SizedBox(
              height: 20,
            ),
            // Full Name
            Text(
              "Uday Krishna Nadavaluru",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 15,
            ),
            //  email
            Details(
              title: "Email-Id : ",
              data: "nudaykrishna0601@gmail.com",
            ),
            SizedBox(
              height: 10,
            ),
            Details(
              title: "Contact No. : ",
              data: "8688264447",
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color: Colors.white,
                thickness: 1,
              ),
            ),
            AccountTile(
              title: "My Rides",
              subTitle: "View Previous Rides",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RideScreen(),),);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
            ),
            AccountTile(
              title: "Addresses",
              subTitle: "Edit & Add New Addresses",
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
            ),
            Spacer(),
            Logout(onTap: () {
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => LoginScreen(),), (
                      route) => false);
            },),
            Spacer(),
          ],
        ),
      ),
    );
  }
}






