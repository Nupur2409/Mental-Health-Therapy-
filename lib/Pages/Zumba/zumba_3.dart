import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Zumba3 extends StatefulWidget {
  const Zumba3({super.key});

  @override
  State<Zumba3> createState() => _Zumba3State();
}

class _Zumba3State extends State<Zumba3> {
 
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=gsvbycsipB8';
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
            title: const Text('Day 3'),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                    Color(0xff1e3f66),
                Color(0xffbcd2e8),
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
                          "Continuing on from Day 2, here are some additional points about the importance of Zumba for mental health:",
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
                          "Zumba can reduce feelings of anxiety: Many people experience feelings of anxiety, which can be overwhelming and debilitating. Zumba can be an effective way to reduce anxiety because it provides a positive outlet for excess energy and tension. As you move your body, you release endorphins, which are natural chemicals that can help you feel more relaxed and less anxious.",
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
                          "Zumba can improve cognitive function: Physical activity has been shown to improve cognitive function, including memory, attention, and processing speed. Zumba is a form of exercise that can be mentally challenging because it requires you to follow the movements and keep up with the beat. This can improve brain function and promote mental sharpness.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.normal))))
            ]),
          )));
}

 
