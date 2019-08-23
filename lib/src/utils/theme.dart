import 'package:flutter/material.dart';

class MyTheme {
  static final Color firstCircleColor = Colors.white.withOpacity(0.3);
  static final Color secondCircleColor = Colors.white.withOpacity(0.4);
  static final Color thirdCircleColor = Colors.white.withOpacity(0.6);
  static final Color forumRankBorderColor = Colors.grey.withOpacity(0.4);

  static TextStyle valueTextStyle(BuildContext context) => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
  );

  static TextStyle labelTextStyle(BuildContext context) => TextStyle(
    color: Colors.grey,
    fontSize: 16.0,
  );

  static TextStyle whiteValueTextStyle(BuildContext context) => TextStyle(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle whiteLabelTextStyle(BuildContext context) => TextStyle(
    color: Colors.white,
    fontSize: 16.0,
  );

  static TextStyle rankStyle(BuildContext context) => TextStyle(
    color: Theme.of(context).primaryColor,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle selectedTabStyle(BuildContext context) => TextStyle(
    color: Colors.black,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle defaultTabStyle(BuildContext context) => TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headingStyle(BuildContext context) => TextStyle(
    color: Colors.black,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subHeadingStyle(BuildContext context) => TextStyle(
    color: Color(0xFF686B7C),
    fontSize: 18.0,
  );

  static TextStyle mainHomeButtonTextStyle(BuildContext context) => TextStyle(
    color: Colors.white,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle forumNameTextStyle(BuildContext context) => TextStyle(
    color: Colors.white,
    fontSize: 22.0,
    fontWeight: FontWeight.w800,
  );
}