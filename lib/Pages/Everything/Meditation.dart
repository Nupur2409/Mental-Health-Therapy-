import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/Pages/Exercise/walk.dart';
import 'package:flutter_new/Pages/Meditation/meditate1.dart';
import 'package:flutter_new/Pages/Meditation/sess2.dart';
import 'package:flutter_new/Pages/Meditation/sess3.dart';
import 'package:flutter_new/Pages/Meditation/sess4.dart';
import 'package:flutter_new/Pages/Meditation/sess5.dart';
import 'package:flutter_new/Pages/Meditation/sess6.dart';
import 'package:flutter_new/Pages/Meditation/session1.dart';


class MeditationPage extends StatefulWidget {
  const MeditationPage({super.key});

  @override
  State<MeditationPage> createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage> {
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xff26365E),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(right: 40, top: 20, bottom: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/path.png'),
                      fit: BoxFit.contain)),
            ),
          ),
          Column(children: <Widget>[
            SizedBox(
              height: 90,
            ),
            Expanded(
              
                  child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        'Meditation',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '3-10 Min Course',
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Live happier and healthier by learning the fundamentals of meditation and mindfulness',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                             
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.all(50),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/main2.png'),
                                  fit: BoxFit.contain)),
                        ))
                      ],
                    ),
                    SizedBox(height: 45),
                    SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 190,
                                      height: 70,
                                      padding: EdgeInsets.all(10),
                                      child: Row(
                                        children: [
                                          IconButton( alignment: Alignment.centerLeft,
                                            icon: Icon( 
                                              Icons.play_circle_outlined,
                                              size: 35, 
                                            ),
                                            onPressed: () => {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => Session1()))
                                            },
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Center( 
                                              child: Text( 
                                            "Session 1",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 30,
                                             
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          color: Colors.white,
                                          shape: BoxShape.rectangle,
                                          boxShadow: [
                                            BoxShadow( offset:(Offset(5, 5)) ,
                                                color:
                                                    Colors.black,
                                                blurRadius: 15,
                                               spreadRadius: 1
                                                )
                                          ]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                              Column( 
                              children: [ 
                                Row( 
                                  children: [ 
                                    Container(
                                      width: 190,
                                      height: 70,
                                      padding: EdgeInsets.all(10),
                                      child: Row(
                                        children: [
                                          IconButton( alignment: Alignment.centerLeft,
                                            icon: Icon( 
                                              Icons.play_circle_outlined,
                                              size: 35, 
                                            ),
                                            onPressed: () => {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => Session2()))
                                            },
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Center( 
                                              child: Text( 
                                            "Session 2",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 30,
                                             
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          color: Colors.white,
                                          shape: BoxShape.rectangle,
                                          boxShadow: [
                                            BoxShadow(  offset: (Offset(5, 5)),
                                                color:
                                                    Colors.black,
                                                blurRadius: 15,
                                               spreadRadius: 1)
                                          ]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                           
                            
                           
                          ],
                        )
                      ),
                    ),
                    SizedBox( height: 75,),
                    Container(
                       padding: const EdgeInsets.only(top: 10),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 190,
                                    height: 70,
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        IconButton( alignment: Alignment.centerLeft,
                                          icon: Icon( 
                                            Icons.play_circle_outlined,
                                            size: 35, 
                                          ),
                                          onPressed: () => {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Session3()))
                                          },
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Center( 
                                            child: Text( 
                                          "Session 3",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 30,
                                          
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        boxShadow: [
                                          BoxShadow(  offset: (Offset(5, 5)),
                                              color:
                                                  Colors.black,
                                              blurRadius: 15,
                                              spreadRadius: 1
                                             )
                                        ]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                            Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 190,
                                    height: 70,
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        IconButton( alignment: Alignment.centerLeft,
                                          icon: Icon( 
                                            Icons.play_circle_outlined,
                                            size: 35, 
                                          ),
                                          onPressed: () => {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Session4()))
                                          },
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Center( 
                                            child: Text( 
                                          "Session 4",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 30,
                                           
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        boxShadow: [
                                          BoxShadow(  offset: (Offset(5, 5)),
                                              color:
                                                  Colors.black,
                                              blurRadius: 15,
                                              spreadRadius: 1)
                                        ]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                         
                         ],
                       ),
                    ),
                    SizedBox( height: 75,),
                    Container(
                       padding: const EdgeInsets.only(top: 10),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 190,
                                    height: 70,
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        IconButton( alignment: Alignment.centerLeft,
                                          icon: Icon( 
                                            Icons.play_circle_outlined,
                                            size: 35, 
                                          ),
                                          onPressed: () => {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Session5()))
                                          },
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Center( 
                                            child: Text( 
                                          "Session 5",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 30,
                                            
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        boxShadow: [
                                          BoxShadow(   offset: (Offset(5, 5)),
                                              color:
                                                  Colors.black,
                                              blurRadius: 15,
                                             spreadRadius: 1)
                                        ]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                            Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 190,
                                    height: 70,
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      children: [
                                        IconButton( alignment: Alignment.centerLeft,
                                          icon: Icon( 
                                            Icons.play_circle_outlined,
                                            size: 35, 
                                          ),
                                          onPressed: () => {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Session6()))
                                          },
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Center( 
                                            child: Text( 
                                          "Session 6",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 30,
                                           
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        boxShadow: [
                                          BoxShadow(  offset: (Offset(5, 5)),
                                              color:
                                                  Colors.black,
                                              blurRadius: 15,
                                             spreadRadius: 1)
                                        ]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                         
                         ],
                       ),
                    ),
                    SizedBox(height: 150,),
                    
                        Center(child: RichText(
                          text: TextSpan(recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Meditate1())),
                          text: "Click here",
                    style: TextStyle(fontSize: 30, color: Color(0xff000080), fontFamily: GoogleFonts.aclonica().fontFamily)))
                 ) ],
                ),

              ),
              
              
            )
          ])
        ],
      ),
    
    );
  }
}
