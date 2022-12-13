import 'package:flutter/material.dart';


class MyClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.65);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.65,
        size.width * 0.47, size.height * 0.74);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.85, size.width, size.height * 0.85);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
