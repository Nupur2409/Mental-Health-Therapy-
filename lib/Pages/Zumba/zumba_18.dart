import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Zumba18 extends StatefulWidget {
  const Zumba18({super.key});

  @override
  State<Zumba18> createState() => _Zumba18State();
}

class _Zumba18State extends State<Zumba18> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=KocWOu-d8Rw';
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
            title: const Text('Day 18'),
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
                          "Continuing on from Day 17, here are some additional points about the importance of Zumba for mental health:",
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
                          "Aerobics, on the other hand, encompasses a wide range of exercises that can be done in a group setting or on your own. Common types of aerobics include step aerobics, water aerobics, and cardio kickboxing. Aerobics is a great way to improve cardiovascular health, as it increases your heart rate and breathing rate, which in turn helps to improve blood flow to the muscles and organs. This type of exercise can also help to reduce the risk of heart disease, stroke, and diabetes, and can be an effective way to manage high blood pressure and cholesterol levels.",
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
                          "Both Zumba and aerobics can be done in a group setting, which can be a great way to socialize and meet new people. Group classes are often led by an instructor who provides guidance and motivation, as well as music and choreography that is designed to keep you engaged and moving. Group classes can also be a great way to stay motivated, as the energy and enthusiasm of the group can help to keep you going when you might otherwise feel like giving up.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.normal))))
            ]),
          )));
}
