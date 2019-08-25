import 'package:flutter/material.dart';
import 'package:videogame_message_board_mockup/src/models/topic.dart';
import 'package:videogame_message_board_mockup/src/utils/theme.dart';

class TopicsTile extends StatelessWidget {
  final Topic topic;

  TopicsTile(this.topic);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Text(
                  topic.question,
                  overflow: TextOverflow.ellipsis,
                  style: MyTheme.topicQuestionTextStyle(context),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 4.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Theme.of(context).primaryColor,
                ),
                child: Text(
                  topic.answerCount.toString(),
                  style: MyTheme.topicAnswersCountTextStyle(context),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            topic.recentAnswer,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: MyTheme.topicAnswerTextStyle(context),
          ),
        ],
      ),
    );
  }
}
