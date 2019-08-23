import 'package:flutter/material.dart';

class ForumDetailCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path _path = Path();
    _path.moveTo(0, size.height * 0.5);
    _path.lineTo(0, size.height);
    _path.lineTo(size.width, size.height);
    _path.lineTo(size.width, 30.0);
    _path.quadraticBezierTo(size.width - 5, 5.0, size.width - 35.0, 15.0);
    _path.close();
    return _path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
