import 'package:flutter/material.dart';
import 'package:videogame_message_board_mockup/src/models/forum.dart';
import 'package:videogame_message_board_mockup/src/utils/tags.dart';
import 'package:videogame_message_board_mockup/src/utils/theme.dart';
import 'package:videogame_message_board_mockup/src/widgets/app_background.dart';
import 'package:videogame_message_board_mockup/src/widgets/topics_tile.dart';
import 'package:videogame_message_board_mockup/src/widgets/value_label_widget.dart';

class DetailsPage extends StatefulWidget {
  final Forum forum;

  DetailsPage(this.forum);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with SingleTickerProviderStateMixin {
  final double _dataCardHeight = 270.0;
  AnimationController _animationController;
  Animation<double> _fadeAnimation;
  Animation<double> _scaleAnimation;
  Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);
    _scaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);
    _offsetAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _playAnimation(),
        builder: (context, snapshot) {
          return Stack(
            children: <Widget>[
              AppBackground(
                firstCircleColor: MyTheme.orangishFirstCircleColor,
                secondCircleColor: MyTheme.orangishSecondCircleColor,
                thirdCircleColor: MyTheme.orangishThirdCircleColor,
              ),
              _createDetailsBody(context),
              _createForumTopicsData(context),
              _createAppBar(context),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _createAppBar(BuildContext context) {
    return Positioned(
      top: 0.0,
      left: 0.0,
      right: 0.0,
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: Theme.of(context).iconTheme,
      ),
    );
  }

  Widget _createDetailsBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 90.0,
        ),
        _createForumEarlyData(context),
        SizedBox(
          height: 20.0,
        ),
        _createForumBackground(context),
      ],
    );
  }

  Widget _createForumBackground(BuildContext context) {
    return Hero(
      tag: widget.forum.title,
      child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(60.0)),
        child: SizedBox(
          height: 430.0,
          child: Image.asset(
            widget.forum.imagePath,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }

  Widget _createForumEarlyData(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 100.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ValueLabelWidget(
              value: widget.forum.topics.length.toString(),
              label: "topic",
              valueStyle: MyTheme.whiteValueTextStyle(context),
              labelStyle: MyTheme.whiteLabelTextStyle(context),
            ),
            ValueLabelWidget(
              value: widget.forum.threads.toString(),
              label: "thread",
              valueStyle: MyTheme.whiteValueTextStyle(context),
              labelStyle: MyTheme.whiteLabelTextStyle(context),
            ),
            ValueLabelWidget(
              value: widget.forum.subs,
              label: "subs",
              valueStyle: MyTheme.whiteValueTextStyle(context),
              labelStyle: MyTheme.whiteLabelTextStyle(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createForumTopicsData(BuildContext context) {
    return Positioned(
      left: 0.0,
      bottom: 0.0,
      right: 0.0,
      child: Container(
        height: _dataCardHeight + 50.0,
        child: Stack(
          children: <Widget>[
            _createTopicsDataCard(context),
            _createRank(context),
          ],
        ),
      ),
    );
  }

  Widget _createTopicsDataCard(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(60.0)),
        child: SizedBox(
          height: _dataCardHeight,
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 32.0,
                left: 16.0,
                right: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Topic",
                    style: MyTheme.subHeadingStyle(context).copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                  Expanded(
                    child: SlideTransition(
                      position: _offsetAnimation,
                      child: ListView.builder(
                        itemCount: widget.forum.topics.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return TopicsTile(widget.forum.topics[index]);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _createRank(BuildContext context) {
    return Positioned(
      top: 18.0,
      right: 28.0,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: FloatingActionButton(
          heroTag: MyTags.detailsFABHeroTag,
          onPressed: null,
          backgroundColor: Colors.white,
          child: Text(
            widget.forum.rank.toString(),
            style: MyTheme.rankBigStyle(context),
          ),
        ),
      ),
    );
  }

  TickerFuture _playAnimation() {
    _animationController.reset();
    return _animationController.forward();
  }
}
