import 'package:flutter/material.dart';
import 'package:online_matchmaking_system/functions/alertfunctions.dart';
import 'package:online_matchmaking_system/utils/constant.dart';
import 'package:swipe_cards/swipe_cards.dart';

class ShowingPage extends StatefulWidget {
  const ShowingPage({super.key});

  @override
  State<ShowingPage> createState() => _ShowingPageState();
}

class _ShowingPageState extends State<ShowingPage> {
  final List<SwipeItem> _swipeItem = <SwipeItem>[];
  MatchEngine? _matchEngine;
  final List<String> names = [
    "Rahul",
    "Maxwell",
    "Kohli",
    "Rohit",
    "Warner",
    "Finch",
    "ABD",
    "Sujan",
    "Anuj"
  ];
  @override
  void initState() {
    for (int i = 0; i < names.length; i++) {
      _swipeItem.add(SwipeItem(
        content: Content(text: names[i]),
        likeAction: () {
          actions(context, names[i], "Liked");
        },
        nopeAction: () {
          actions(context, names[i], 'Rejected');
        },
        superlikeAction: () {
          actions(context, names[i], "SuperLiked");
        },
      ));
    }
    _matchEngine = MatchEngine(swipeItems: _swipeItem);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    imageWidget("images/image1.jpg"),
                    buttonWidget(Icons.star, Colors.amber),
                    buttonWidget(Icons.notifications, Colors.grey.shade400)
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: SwipeCards(
                    matchEngine: _matchEngine!,
                    onStackFinished: () {
                      return ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("List is over")));
                    },
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover),
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                names[index],
                                style: const TextStyle(
                                    fontSize: 32,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buttonWidget(Icons.refresh, Colors.amber),
                    buttonWidget(Icons.cancel, Colors.red),
                    buttonWidget(Icons.star, Colors.blue),
                    GestureDetector(
                        onTap: () {},
                        child: buttonWidget(
                            Icons.favorite_outline_outlined, Colors.green)),
                    buttonWidget(Icons.bolt, Colors.purple),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

Widget buttonWidget(IconData icon, Color color) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
        border: Border.all(width: 0.3),
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle),
    child: Icon(
      icon,
      color: color,
      size: 30,
    ),
  );
}

Widget imageWidget(String image) {
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
  );
}

class Content {
  final String? text;
  Content({this.text});
}
