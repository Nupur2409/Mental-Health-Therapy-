import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';



class Sess1 extends StatefulWidget {
  const Sess1({super.key});

  @override
  State<Sess1> createState() => _Sess1State();
}

class _Sess1State extends State<Sess1> {
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
                'assets/images/yog1.png',
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'What is Yoga',
              style: TextStyle(fontSize: 25, 
              fontWeight: FontWeight.bold, 
             ),
            ),
            SizedBox(height: 35,),
            AudioWidget.assets(
              path: "assets/audios/yogaS1.mp3",
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
