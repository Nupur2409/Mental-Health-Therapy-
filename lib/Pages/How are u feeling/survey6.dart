import 'package:flutter/material.dart';
import 'package:flutter_new/Pages/anxiety.dart';
import 'package:flutter_new/Pages/curious.dart';
import 'package:flutter_new/Pages/How%20are%20u%20feeling/result.dart';
import 'package:flutter_new/Pages/How%20are%20u%20feeling/survey1.dart';
import 'package:flutter_new/Pages/How%20are%20u%20feeling/survey3.dart';
import 'package:google_fonts/google_fonts.dart';



class Survey6 extends StatefulWidget {
  const Survey6({super.key});

  @override
  State<Survey6> createState() => _Survey6State();
}

class _Survey6State extends State<Survey6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB1D4E0),
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Text(
            "Have you changed",
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
            "your routine recently?",
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
            onPressed: () {},
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
                  "Yes, a quite a bit",
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
            onPressed: () {},
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
                  "Yes, Slightly",
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
            onPressed: ()
           {},
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
                  "Not at all",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
         SizedBox( height: 100,),
        
        
            ElevatedButton(
                      style: ButtonStyle( fixedSize:MaterialStateProperty.all<Size?>(Size(100.0, 50.0)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder( 
                                borderRadius: BorderRadius.circular(150.0),
                                side: BorderSide(color: Colors.black))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff0d2241)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Result()),
                        );
                      },
                      child: Text('Get Result', style: TextStyle(fontFamily: GoogleFonts.acme().fontFamily,fontSize: 30, color: Colors.white),
                    
        ),
           )]),
       
    );
    
    
  
    
  }
}