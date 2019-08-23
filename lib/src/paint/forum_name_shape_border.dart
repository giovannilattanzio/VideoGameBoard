import 'package:flutter/material.dart';

class ForumNameShapeBorder extends ShapeBorder {
  final double _distanceFromWall = 12.0;
  final double _controlPointDistanceFromWall = 2.0;

  @override
  EdgeInsetsGeometry get dimensions => null;

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return null;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return getClip(Size(130.0, 60.0));
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return null;
  }

  Path getClip(Size size) {
    Path _path = Path();
    _path.moveTo(0 + _distanceFromWall, 0);
    _path.quadraticBezierTo(0 + _controlPointDistanceFromWall,
        0 + _controlPointDistanceFromWall, 0, 0 + _distanceFromWall);
    _path.lineTo(0, size.height - _distanceFromWall);
    _path.quadraticBezierTo(
        0 + _controlPointDistanceFromWall,
        size.height - _controlPointDistanceFromWall,
        _distanceFromWall,
        size.height);
    _path.lineTo(size.width - _distanceFromWall, size.height);
    _path.quadraticBezierTo(
        size.width - _controlPointDistanceFromWall,
        size.height - _controlPointDistanceFromWall,
        size.width,
        size.height - _distanceFromWall);
    _path.lineTo(size.width, size.height * 0.6);
    _path.quadraticBezierTo(
        size.width - 1,
        size.height * 0.6 - _distanceFromWall,
        size.width - _distanceFromWall,
        size.height * 0.6 - _distanceFromWall - 3);
    _path.lineTo(0 + _distanceFromWall + 6, 0);

    _path.close();
    return _path;
  }
}
