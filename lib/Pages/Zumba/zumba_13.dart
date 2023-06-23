import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Zumba13 extends StatefulWidget {
  const Zumba13({super.key});

  @override
  State<Zumba13> createState() => _Zumba13State();
}

class _Zumba13State extends State<Zumba13> {
   late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=2316Ux_Fks0';
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
            title: const Text('Day 13'),
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
                          "Continuing on from Day 12, here are some additional points about the importance of Zumba for mental health:",
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
                          "Another benefit of Zumba is that it can improve flexibility and coordination. The dance moves in Zumba require individuals to move in a variety of different ways, which can help to improve flexibility and range of motion. In addition, the fast-paced nature of Zumba can help to improve coordination and balance, which can have numerous benefits for physical health and injury prevention.",
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
                          "Zumba can also be a low-impact exercise option for individuals who may have joint or mobility issues. While Zumba is a high-energy workout, it can be modified to suit the needs of individuals with different fitness levels and abilities. The program can be adapted to be a low-impact workout that is gentle on the joints and suitable for individuals with mobility issues.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.normal))))
            ]),
          )));
}
