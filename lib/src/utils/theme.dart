import 'package:flutter/material.dart';

class MyTheme {
  static final Color whitishFirstCircleColor = Colors.white.withOpacity(0.3);
  static final Color whitishSecondCircleColor = Colors.white.withOpacity(0.4);
  static final Color whitishThirdCircleColor = Colors.white.withOpacity(0.6);
  static final Color orangishFirstCircleColor = Color(0xFFFF9F59).withOpacity(0.9);
  static final Color orangishSecondCircleColor = Colors.white.withOpacity(0.1);
  static final Color orangishThirdCircleColor = Colors.white.withOpacity(0.2);
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
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle whiteLabelTextStyle(BuildContext context) => TextStyle(
    color: Colors.white,
    fontSize: 20.0,
  );

  static TextStyle rankStyle(BuildContext context) => TextStyle(
    color: Theme.of(context).primaryColor,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle rankBigStyle(BuildContext context) => TextStyle(
    color: Theme.of(context).primaryColor,
    fontSize: 30.0,
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

  static TextStyle topicQuestionTextStyle(BuildContext context) => TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
  );

  static TextStyle topicAnswerTextStyle(BuildContext context) => TextStyle(
    color: Colors.blueGrey,
    fontSize: 18.0,
    fontWeight: FontWeight.w200,
  );

  static TextStyle topicAnswersCountTextStyle(BuildContext context) => TextStyle(
    color: Colors.white,
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
  );
}