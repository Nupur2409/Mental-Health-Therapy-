import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Zumba17 extends StatefulWidget {
  const Zumba17({super.key});

  @override
  State<Zumba17> createState() => _Zumba17State();
}

class _Zumba17State extends State<Zumba17> {
   late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=3Vp5HoDbLt0';
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
            title: const Text('Day 17'),
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
                          "Zumba and aerobics are both popular forms of exercise that offer a variety of health benefits. Zumba is a dance fitness program that incorporates high-energy Latin and international music with easy-to-follow dance moves, while aerobics is a general term that refers to any type of cardiovascular exercise that increases your heart rate and breathing rate. Both forms of exercise provide a great cardiovascular workout, help to improve endurance and stamina, and can be an effective way to burn calories and lose weight.",
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
                          "Zumba and aerobics are both popular forms of exercise that offer a variety of health benefits. Zumba is a dance fitness program that incorporates high-energy Latin and international music with easy-to-follow dance moves, while aerobics is a general term that refers to any type of cardiovascular exercise that increases your heart rate and breathing rate. Both forms of exercise provide a great cardiovascular workout, help to improve endurance and stamina, and can be an effective way to burn calories and lose weight.",
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
                          "Provides a Sense of Community: Zumba classes can provide a sense of community and social support. Participants can connect with others who share similar goals and interests, leading to a sense of belonging and improved overall well-being.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.normal))))
            ]),
          )));
}
