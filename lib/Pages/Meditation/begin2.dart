import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/Pages/Meditation/begin1.dart';
import 'package:flutter_new/Pages/Meditation/begin3.dart';
import 'package:google_fonts/google_fonts.dart';

class begin2 extends StatefulWidget {
  const begin2({super.key});

  @override
  State<begin2> createState() => _begin2State();
}

class _begin2State extends State<begin2> {
  bool _Play = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: (LinearGradient(colors: [
            Color(0xffa5bfd0),
            Colors.white,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36)),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 48),
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Text(
                      "1st Stage",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: GoogleFonts.acme().fontFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 45),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                      child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage("assets/images/M2.png"))),
                  )),
                  SizedBox(
                    height: 18,
                  ),
                  Center(
                    child: Text(
                      "Mantra",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: GoogleFonts.acme().fontFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () 
                              => {
                                            Navigator.pop(context, MaterialPageRoute(builder: (context) => Begin1()))},
                              icon: Icon(
                                Icons.skip_previous,
                              ),
                              iconSize: 45,
                            ),
                            AudioWidget.assets(
                              path: "assets/audios/Om begin.mp3",
                              play: _Play,
                              child: IconButton(
                                icon: Icon(
                                    _Play ? Icons.pause : Icons.play_arrow),
                                onPressed: () {
                                  setState(() {
                                    _Play = !_Play;
                                    print(_Play);
                                  });
                                },
                                iconSize: 62,
                              ),
                            ),
                            IconButton(
                              onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => begin3()))
                              },
                              icon: Icon(Icons.skip_next),
                              iconSize: 45,
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                ]),
          ),
        ),
      ),
    );
  }
}
