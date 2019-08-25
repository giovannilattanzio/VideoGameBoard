import 'package:flutter/material.dart';
import 'package:videogame_message_board_mockup/src/models/forum.dart';
import 'package:videogame_message_board_mockup/src/paint/forum_detail_custom_clipper.dart';
import 'package:videogame_message_board_mockup/src/paint/forum_name_shape_border.dart';
import 'package:videogame_message_board_mockup/src/screens/details_page.dart';
import 'package:videogame_message_board_mockup/src/utils/theme.dart';
import 'package:videogame_message_board_mockup/src/widgets/value_label_widget.dart';

class ForumCard extends StatelessWidget {
  final Forum forum;
  final double _cardWidth = 280.0;
  final BorderRadius _cardBorderRadius =
      BorderRadius.all(Radius.circular(20.0));

  ForumCard(this.forum);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        width: _cardWidth,
        child: Card(
          elevation: 15.0,
          margin: EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 35.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: _cardBorderRadius,
          ),
          child: ClipRRect(
            borderRadius: _cardBorderRadius,
            child: Stack(
              children: <Widget>[
                _createForumBackground(),
                _createForumDetails(context),
                _createForumName(context),
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => DetailsPage(forum)),
        );
      },
    );
  }

  Widget _createForumBackground() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      child: Hero(
        tag: forum.title,
        child: Image.asset(
          forum.imagePath,
          width: _cardWidth,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget _createForumDetails(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: ClipPath(
        clipper: ForumDetailCustomClipper(),
        child: Container(
          color: Colors.white,
          height: 180.0,
          width: _cardWidth,
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 16.0,
            top: 24.0,
            bottom: 12.0,
          ),
          child: Column(
            children: <Widget>[
              _createForumRank(context),
              SizedBox(
                height: 40.0,
              ),
              _createForumOtherData(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createForumRank(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: MyTheme.forumRankBorderColor,
                width: 2.0,
              ),
            ),
            height: 40.0,
            width: 40.0,
            child: Center(
              child: Text(
                forum.rank.toString(),
                style: MyTheme.rankStyle(context),
              ),
            ),
          ),
          Text(
            "new",
            style: MyTheme.labelTextStyle(context),
          ),
        ],
      ),
    );
  }

  Widget _createForumOtherData(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        ValueLabelWidget(
          value: forum.topics.length.toString(),
          label: "topic",
          valueStyle: MyTheme.valueTextStyle(context),
          labelStyle: MyTheme.labelTextStyle(context),
        ),
        ValueLabelWidget(
          value: forum.threads.toString(),
          label: "thread",
          valueStyle: MyTheme.valueTextStyle(context),
          labelStyle: MyTheme.labelTextStyle(context),
        ),
        ValueLabelWidget(
          value: forum.subs,
          label: "subs",
          valueStyle: MyTheme.valueTextStyle(context),
          labelStyle: MyTheme.labelTextStyle(context),
        ),
      ],
    );
  }

  Widget _createForumName(BuildContext context) {
    return Positioned(
      left: 0.0,
      bottom: 80.0,
      child: Material(
        color: Theme.of(context).primaryColor,
        elevation: 20.0,
        shape: ForumNameShapeBorder(),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 18.0,
            left: 20.0,
            right: 16.0,
            bottom: 5.0,
          ),
          child: Text(
            forum.title,
            style: MyTheme.forumNameTextStyle(context),
          ),
        ),
      ),
    );
  }
}
