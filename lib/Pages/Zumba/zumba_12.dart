import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Zumba12 extends StatefulWidget {
  const Zumba12({super.key});

  @override
  State<Zumba12> createState() => _Zumba12State();
}

class _Zumba12State extends State<Zumba12> {
 late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=qNByp5yiKOI';
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(loop: true, autoPlay: false),
    );
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
      player: YoutubePlayer(controller: controller),
      builder: (context, player) => Scaffold(
          appBar: AppBar(
            title: const Text('Day 12'),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                    Color(0xff2b1e25),
                    Color(0xffd2b0d0),
                  ])),
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(
                25,
              ),
            )),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              top: 32,
              bottom: 32,
            ),
            child: ListView(children: [
              player,
              Container(
                  padding: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Center(
                      child: Text(
                          "Continuing on from Day 11, here are some additional points about the importance of Zumba for mental health:",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(5),
                  child: Center(
                      child: Text(
                          "Zumba can also be a social activity, which can have additional mental health benefits. Participating in group fitness classes has been found to help individuals to feel more connected to others, reduce feelings of loneliness and isolation, and improve self-esteem. Zumba classes can provide a supportive and positive environment where individuals can connect with others and build relationships. The sense of community that can be fostered in Zumba classes can have a powerful impact on mental health and well-being.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.normal)))),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(5),
                  child: Center(
                      child: Text(
                          "Zumba can also boost mood and improve cognitive function. The dance moves and music used in Zumba are designed to be fun and engaging, which can help to boost mood and improve motivation. Exercise has also been found to release endorphins, which are natural mood-boosting chemicals in the brain. In addition, regular exercise has been linked to improved cognitive function, including increased attention and memory. By incorporating Zumba into their fitness routine, individuals can experience these benefits and improve their overall mental well-being.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.normal))))
            ]),
          )));
}

 
