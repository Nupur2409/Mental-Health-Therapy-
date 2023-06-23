import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class yog11 extends StatefulWidget {
  const yog11({super.key});

  @override
  State<yog11> createState() => _yog11State();
}

class _yog11State extends State<yog11> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=B4kNiCWTl7M';
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
            title: const Text('Two session have been completed'),
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
                            "Benefits for the heart: Yoga can help lower blood pressure, reduce the risk of heart disease, and improve overall cardiovascular health. It does so by reducing stress, promoting relaxation, and improving respiratory function, which can improve lung capacity and overall heart health.",
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
                          "Benefits for the immune system: Certain yoga practices like pranayama and meditation have been found to boost immunity by reducing stress and promoting relaxation. By reducing stress, yoga can also improve respiratory function, which can help reduce the risk of respiratory illnesses.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.normal)))),
            
            ]),
          )));
}
