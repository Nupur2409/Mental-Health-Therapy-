import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class yog13 extends StatefulWidget {
  const yog13({super.key});

  @override
  State<yog13> createState() => _yog13State();
}

class _yog13State extends State<yog13> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=_Mx24iENIEY';
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
            title: const Text('Its Normal Now'),
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
                            "Benefits for pain management: Yoga has been found to be effective in reducing chronic pain in conditions like arthritis and back pain. It does so by improving flexibility, strengthening muscles, and reducing stress, which can exacerbate pain.",
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
                          "Benefits for women's health: Certain yoga practices can be beneficial for women's health by improving menstrual cramps, reducing menopausal symptoms, and promoting overall reproductive health.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.normal)))),
            
            ]),
          )));
}
