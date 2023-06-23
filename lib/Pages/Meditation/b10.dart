

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_new/Pages/Meditation/b11.dart';
import 'package:flutter_new/Pages/Meditation/b9.dart';
import 'package:flutter_new/Pages/Meditation/begin2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class b10 extends StatefulWidget {
  const b10({super.key});

  @override
  State<b10> createState() => _b10State();
}

class _b10State extends State<b10> {
  bool _Play = false;
 

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: (LinearGradient(colors: [
            Color(0xffdeaa9b),
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
                      "Almost Completed",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: GoogleFonts.acme().fontFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 38),
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
                       
                        Padding(padding:  EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                          ],
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => b9()));},
                              icon: Icon(
                                Icons.skip_previous,
                              ),
                              iconSize: 45,
                            ),
                            AudioWidget.assets( path: "assets/audios/5.mp3", play: _Play,
                              child: IconButton( icon: Icon(_Play ? Icons.pause : Icons.play_arrow),
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
                              onPressed: ()=> {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => b11()))
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
