import 'package:flutter/material.dart';
import 'package:videogame_message_board_mockup/src/utils/tags.dart';
import 'package:videogame_message_board_mockup/src/utils/theme.dart';
import 'package:videogame_message_board_mockup/src/widgets/app_background.dart';
import 'package:videogame_message_board_mockup/src/widgets/horizontal_tab_layout.dart';
import 'package:videogame_message_board_mockup/src/widgets/value_label_widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBackground(),
          Column(
            children: <Widget>[
              _createTopBar(context),
              HorizontalTabLayout(),
              Spacer(),
              _createBottomButton(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _createTopBar(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _createTopBarButton(context),
        _createTopBarHeader(context),
      ],
    );
  }

  Widget _createTopBarHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ValueLabelWidget(
        value: "Forum",
        label: "Inizia la conversazione",
        valueStyle: MyTheme.headingStyle(context),
        labelStyle: MyTheme.subHeadingStyle(context),
      ),
    );
  }

  Widget _createTopBarButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, top: 10.0),
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 50.0,
            width: 50.0,
            child: FloatingActionButton(
              heroTag: MyTags.homeFABHeroTag,
              onPressed: null,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.apps,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _createBottomButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 60.0,
          vertical: 30.0,
        ),
        child: Text(
          "Nuovo Topic",
          style: MyTheme.mainHomeButtonTextStyle(context),
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0)),
        ),
      ),
    );
  }
}
