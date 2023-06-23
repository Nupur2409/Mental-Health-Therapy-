import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:google_fonts/google_fonts.dart';

class Session6 extends StatefulWidget {
  const Session6({super.key});

  @override
  State<Session6> createState() => _Session6State();
}

class _Session6State extends State<Session6> {
  bool _Play = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xffc0e6f0),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/med4.jpg',
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Beyond the Beginning for Meditation',
              style: TextStyle(fontSize: 25, 
              fontWeight: FontWeight.bold, 
             ),
            ),
            SizedBox(height: 35,),
            AudioWidget.assets(
              path: "assets/audios/Session6.mp3",
              play: _Play,
              child: CircleAvatar(radius: 35,
                child: IconButton(
                  icon: Icon(_Play ? Icons.pause : Icons.play_arrow),
                  iconSize: 50, color: Colors.black,
                  onPressed: (() {
                    setState(() {
                      _Play = !_Play;
                      print(_Play);
                    });
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
