import 'package:flutter/material.dart';
import 'package:flutter_new/Pages/How%20are%20u%20feeling/Survey2.dart';
import 'package:flutter_new/Pages/How%20are%20u%20feeling/survey1.dart';
import 'package:flutter_new/Pages/How%20are%20u%20feeling/survey3.dart';
import 'package:flutter_new/Pages/How%20are%20u%20feeling/survey4.dart';
import 'package:flutter_new/Pages/How%20are%20u%20feeling/survey5.dart';
import 'package:flutter_new/Pages/How%20are%20u%20feeling/survey6.dart';
import 'package:google_fonts/google_fonts.dart';
import '../anxiety.dart';
import '../curious.dart';
import '../restless.dart';
import '../sad.dart';
import '../sleepless.dart';
import '../stress.dart';
import '../Welcome Nup/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Survey extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SurveyState();
}

class _SurveyState extends State<Survey> {
  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xff2E8BC0),
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Text(
            "How Are",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 30.0,
                fontFamily: GoogleFonts.lora().fontFamily ,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                      color: Colors.black, offset: Offset(1, 1), blurRadius: 3)
                ]),
          ),
        ),
        Container(
          padding: EdgeInsets.only( left: 30, right: 30),
          child: Text(
            "You Feeling Today?",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 30.0,
                fontFamily: GoogleFonts.lora().fontFamily ,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                      color: Colors.black, offset: Offset(1, 1), blurRadius: 3)
                ]),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Container(
          height: 50.0,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Survey1()),
              )
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0))),
            ),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "SLEEPLESS",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 50.0,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Survey2()),
              )
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0))),
            ),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "SAD",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 50.0,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Survey3()),
              )
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0))),
            ),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "ANXIETY",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
       
        SizedBox(
          height: 30,
        ),
        Container(
          height: 50.0,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Survey4()),
              )
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0))),
            ),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "RESTLESS",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 50.0,
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Survey5()),
              )
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0))),
            ),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "STRESSED",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ]),
    
  
  );
;}}
