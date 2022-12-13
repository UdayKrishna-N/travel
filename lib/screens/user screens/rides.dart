// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';

class RideScreen extends StatelessWidget {
  const RideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List Rides = [
      //  [ start, Destination, trip, date, driverDetails]
      ["Tirupati", "Chennai", "Nov 21, 2022", "Charan",4],
      ["Kanchipuram", "Chennai", "Nov 21, 2022", "Charan",5],
      ["Tirupati", "Chennai", "Nov 21, 2022", "Charan",4],
      ["Kanchipuram", "Chennai", "Nov 21, 2022", "Charan",4],
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 1,
        title: Text("Rides"),
      ),
      body: ListView.builder(
        itemCount: Rides.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              decoration: BoxDecoration(
                border: index == Rides.length - 1
                    ? Border()
                    : Border(
                        bottom: BorderSide(
                        width: 0,
                        color: Colors.white70,
                      )),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/sedan-car-model.png",
                    height: 50,
                    color: Colors.white70,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RideData(
                        icon: Icons.circle,
                        color: Colors.green,
                        data: Rides[index][0],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RideData(
                        icon: Icons.circle,
                        color: Colors.red.shade700,
                        data: Rides[index][1],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RideData(
                        icon: Icons.calendar_today_outlined,
                        color: Colors.white70,
                        data: Rides[index][2],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RideData(icon: Icons.person_outlined, color: Colors.white, data: Rides[index][3]),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.star_border_outlined,color: Colors.white,size: 24,),
                      SizedBox(height: 5,),
                      Text("${Rides[index][4].toString()}/5",style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 14,letterSpacing: 2),)
                    ],
                  ),
                  SizedBox(width: 25,),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class RideData extends StatelessWidget {
  RideData({
    Key? key,
    required this.icon,
    required this.color,
    required this.data,
  }) : super(key: key);

  IconData icon;
  Color color;
  String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: color,
          size: 16,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          data,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}

