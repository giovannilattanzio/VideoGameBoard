import 'package:flutter/material.dart';
import 'package:videogame_message_board_mockup/src/models/forum.dart';
import 'package:videogame_message_board_mockup/src/widgets/forum_card.dart';
import 'package:videogame_message_board_mockup/src/widgets/tab_text.dart';

class HorizontalTabLayout extends StatefulWidget {
  @override
  _HorizontalTabLayoutState createState() => _HorizontalTabLayoutState();
}

class _HorizontalTabLayoutState extends State<HorizontalTabLayout>
    with SingleTickerProviderStateMixin {
  int _selectedTabIndex = 2;
  AnimationController _animationController;
  Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 1000),
    );
    _fadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 450.0,
        child: Stack(
          children: <Widget>[
            _createTabs(),
            _createGamesList(),
          ],
        ),
      ),
    );
  }

  Widget _createTabs() {
    return Positioned(
      left: 15.0,
      top: 0.0,
      bottom: 0.0,
      width: 25.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TabText(
              text: "Media",
              isSelected: _selectedTabIndex == 0,
              onTabTap: () {
                _onTabTap(0);
              },
            ),
            TabText(
              text: "Streamers",
              isSelected: _selectedTabIndex == 1,
              onTabTap: () {
                _onTabTap(1);
              },
            ),
            TabText(
              text: "Forum",
              isSelected: _selectedTabIndex == 2,
              onTabTap: () {
                _onTabTap(2);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _onTabTap(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  Widget _createGamesList() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 65.0,
        top: 20.0,
        bottom: 20.0,
      ),
      child: FutureBuilder(
        future: _playAnimation(),
        builder: (context, snapshot) {
          return FadeTransition(
            opacity: _fadeAnimation,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: _getGamesList(),
            ),
          );
        },
      ),
    );
  }

  TickerFuture _playAnimation() {
    _animationController.reset();
    return _animationController.forward();
  }

  List<Widget> _getGamesList() {
    return <Widget>[
      ForumCard(zeldaForum),
      ForumCard(marioForum),
    ];
  }
}
