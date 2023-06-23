import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:google_fonts/google_fonts.dart';

class Session5 extends StatefulWidget {
  const Session5({super.key});

  @override
  State<Session5> createState() => _Session5State();
}

class _Session5State extends State<Session5> {
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
                'assets/images/med3.jpg',
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Benifits of Meditation',
              style: TextStyle(fontSize: 25, 
              fontWeight: FontWeight.bold, 
             ),
            ),
            SizedBox(height: 35,),
            AudioWidget.assets(
              path: "assets/audios/session5.mp3",
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
