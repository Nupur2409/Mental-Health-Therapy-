import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/In_App_Browser/inapp.dart';
import 'package:flutter_new/Pages/Everything/Everything.dart';
import 'package:flutter_new/Pages/Everything/Meditation.dart';
import 'package:flutter_new/Pages/Everything/Training.dart';
import 'package:flutter_new/Pages/Everything/Yoga.dart';
import 'package:flutter_new/Pages/How%20are%20u%20feeling/r.dart';
import 'package:flutter_new/Pages/How%20are%20u%20feeling/result.dart';

import 'package:flutter_new/Pages/How%20are%20u%20feeling/survey.dart';
import 'package:flutter_new/Pages/How%20are%20u%20feeling/survey6.dart';
import 'package:flutter_new/Pages/LoginSystem/signin_screens.dart';
import 'package:flutter_new/Pages/Meditation/begin1.dart';
import 'package:flutter_new/Pages/Meditation/sess2.dart';
import 'package:flutter_new/Pages/Meditation/sess3.dart';
import 'package:flutter_new/Pages/Meditation/sess4.dart';
import 'package:flutter_new/Pages/Meditation/sess5.dart';
import 'package:flutter_new/Pages/Meditation/session1.dart';
import 'package:flutter_new/Pages/Meet%20Frnds/Meet_ur_frnds.dart';
import 'package:flutter_new/Pages/Nearby%20Data/splash.dart';
import 'package:flutter_new/Pages/Nearby%20Data/thank%20you.dart';
import 'package:flutter_new/Pages/Yoga%20page/Widget/customAppBar.dart';
import 'package:flutter_new/Pages/Yoga%20page/screens/finish.dart';

import 'package:flutter_new/Pages/Zumba/Zumba.dart';

import 'package:flutter_new/Pages/Exercise/running.dart';
import 'package:flutter_new/Pages/Exercise/walk.dart';
import 'package:flutter_new/Pages/StressGame/Game_1.dart';
import 'package:flutter_new/Pages/Welcome%20Nup/home.dart';
import 'package:flutter_new/Pages/task.dart';
import 'package:flutter_new/Pages/How%20are%20u%20feeling/Survey2.dart';
import 'package:flutter_new/Pages/Nearby%20Data/therapy.dart';
import 'package:flutter_new/chatbot/chat_screen.dart';
import 'package:geoflutterfire2/geoflutterfire2.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';

import 'Pages/LoginSystem/welcome.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

 
  runApp( ProviderScope(child:  MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Welcome
      (),
      
    );
  }
}


