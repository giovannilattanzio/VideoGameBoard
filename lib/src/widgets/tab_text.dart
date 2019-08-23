import 'package:flutter/material.dart';
import 'package:videogame_message_board_mockup/src/utils/theme.dart';

class TabText extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function onTabTap;

  TabText({this.text, this.isSelected = false, this.onTabTap});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: InkWell(
        onTap: onTabTap,
        child: AnimatedDefaultTextStyle(
          style: this.isSelected
              ? MyTheme.selectedTabStyle(context)
              : MyTheme.defaultTabStyle(context),
          duration: const Duration(milliseconds: 500),
          child: Text(
            this.text,
          ),
        ),
      ),
    );
  }
}
