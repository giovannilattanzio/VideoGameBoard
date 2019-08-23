import 'package:videogame_message_board_mockup/src/models/topic.dart';

class Forum {
  final String title;
  final String imagePath;
  final int rank;
  final List<Topic> topics;
  final int threads;
  final String subs;

  Forum({
    this.title,
    this.imagePath,
    this.rank,
    this.topics,
    this.threads,
    this.subs,
  });
}

final zeldaForum = Forum(
  title: "Zelda",
  imagePath: "assets/images/zelda.jpg",
  rank: 11,
  threads: 88,
  subs: "500+",
  topics: zeldaTopics,
);

final marioForum = Forum(
  title: "Mario",
  imagePath: "assets/images/mario.jpg",
  rank: 15,
  threads: 120,
  subs: "1000+",
  topics: marioTopics,
);

final forums = [
  zeldaTopics,
  marioTopics,
];