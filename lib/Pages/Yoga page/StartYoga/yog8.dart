import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class yog8 extends StatefulWidget {
  const yog8({super.key});

  @override
  State<yog8> createState() => _yog8State();
}

class _yog8State extends State<yog8> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=p433HzhvB44';
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
            title: const Text('Great, it was tough'),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                    Color(0xff60183e),
                Color(0xffefe7eb),
                  ] 
                  )
                  ),
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
              SizedBox( height: 20,),
                Container(
                    padding: EdgeInsets.all(10),
                    child: SingleChildScrollView(
                      child: Center(
                        child: Text(
                            "Yoga is also known to enhance mental focus and concentration, which can improve productivity and cognitive function. It can also be effective in reducing chronic pain in conditions like arthritis and back pain. By promoting overall well-being, yoga can help individuals achieve a sense of balance and harmony in their lives.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                              fontWeight: FontWeight.normal  )),
                      ),
                    )),
              
              SizedBox(
                height: 75,
              ),
              Container(
                  padding: EdgeInsets.all(5),
                  child: Center(
                      child: Text(
                          "Overall, there are many reasons why people should do yoga. It is a holistic practice that promotes physical, mental, and emotional well-being, making it an excellent choice for individuals looking to improve their overall health and well-being. Whether it's to reduce stress, improve flexibility, or promote heart health, yoga is a valuable practice that can help individuals lead healthier and happier lives.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.normal)))),
            
            ]),
          )));
}
