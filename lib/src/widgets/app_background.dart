import 'package:flutter/material.dart';
import 'package:videogame_message_board_mockup/src/utils/theme.dart';

class AppBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /// [LayoutBuilder] ci dà lo spazio che un singolo widget può usare
    /// [Mediaquery] poteva darci lo spazio dello schermo
    return LayoutBuilder(
      builder: (context, constraint) {

        final _height = constraint.maxHeight;
        final _width = constraint.maxWidth;

        return Stack(
          children: <Widget>[
            Container(
              color: Theme.of(context).backgroundColor,
            ),
            _createFirstCircle(_width, _height),
            _createSecondCircle(_width, _height),
            _createThirdCircle(_width, _height),
          ],
        );
      },
    );
  }

  Widget _createFirstCircle(double width, double height) {
    return Positioned(
      bottom: height * 0.25,
      left: 0.0 - (height/2 - width/2) ,
      child: Container(
        width: height,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: MyTheme.firstCircleColor,
        ),
      ),
    );
  }

  Widget _createSecondCircle(double width, double height) {
    return Positioned(
      left: width * 0.15,
      top: -width * 0.6,
      child: Container(
        width: width * 1.6,
        height: width * 1.6,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: MyTheme.secondCircleColor,
        ),
      ),
    );
  }

  Widget _createThirdCircle(double width, double height) {
    return Positioned(
      right: -width * 0.2,
      top: -50,
      child: Container(
        width: width * 0.6,
        height: width * 0.6,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: MyTheme.thirdCircleColor,
        ),
      ),
    );
  }
}
