import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Zumba10 extends StatefulWidget {
  const Zumba10({super.key});

  @override
  State<Zumba10> createState() => _Zumba10State();
}

class _Zumba10State extends State<Zumba10> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=bqVBMv_nqJ4&t=1s';
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
            title: const Text('Day 10'),
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
                          "Continuing on from Day 9, here are some additional points about the importance of Zumba for mental health:",
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
                          "Zumba is a dance fitness program that has taken the world by storm. Its fun, energetic routines have made it a popular choice for people looking to stay fit and active. Zumba classes typically last between 45 minutes to an hour, but even a 9-minute Zumba routine can provide a range of benefits.",
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
                          "In just 10 minutes, a Zumba routine can help to improve cardiovascular health, build endurance and strength, and burn calories. The dance movements in Zumba involve a lot of jumping, twisting, and turning, which can help to build lower body strength and improve overall endurance. The fast-paced nature of Zumba can also help to burn calories and improve cardiovascular health by increasing heart rate and blood flow throughout the body.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.normal))))
            ]),
          )));
}
