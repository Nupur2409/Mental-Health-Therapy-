import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class yog7 extends StatefulWidget {
  const yog7({super.key});

  @override
  State<yog7> createState() => _yog7State();
}

class _yog7State extends State<yog7> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    const url = 'https://www.youtube.com/watch?v=brjAjq4zEIE';
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
            title: const Text('A Little More'),
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
                            "Yoga can have positive effects on the immune system as well. Practices like pranayama and meditation have been found to boost immunity by reducing stress and promoting relaxation. By reducing stress, yoga can also improve respiratory function and lung capacity, making it a valuable practice for individuals with respiratory conditions.",
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
                          "In addition to physical benefits, yoga can also aid digestion by stimulating the digestive system and promoting healthy digestion. Yoga can also promote heart health by reducing blood pressure, lowering the risk of heart disease, and improving overall cardiovascular health.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.normal)))),
            
            ]),
          )));
}
