import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class yog4 extends StatefulWidget {
  const yog4({super.key});

  @override
  State<yog4> createState() => _yog4State();
}

class _yog4State extends State<yog4> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=-NflDFIQESg';
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
            title: const Text('little Higher'),
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
                            "Improves Sleep Quality: Practicing yoga can help improve the quality of your sleep. Yoga can help calm your mind, relax your body, and reduce stress levels, leading to better sleep",
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
                          "Enhances Mind-Body Connection: Yoga is a practice that connects the mind and body. Practicing yoga can help you become more aware of your body, leading to a greater sense of control over your physical and mental health.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.normal)))),
            
            ]),
          )));
}
