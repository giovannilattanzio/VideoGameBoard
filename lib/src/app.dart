import 'package:flutter/material.dart';
import 'package:videogame_message_board_mockup/src/screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xFFFF9F59),
          backgroundColor: Color(0xFFE4E6F1),
          primarySwatch: Colors.orange,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        home: Home(),
      );
  }
}
