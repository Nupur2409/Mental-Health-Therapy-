import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/Pages/Yoga%20page/screens/Yoga_nxt_page.dart';
import 'package:flutter_new/Pages/Yoga%20page/sess1.dart';
import 'package:flutter_new/Pages/Yoga%20page/sess2.dart';
import 'package:flutter_new/Pages/Yoga%20page/sess3.dart';
import 'package:flutter_new/Pages/Yoga%20page/sess4.dart';
import 'package:flutter_new/Pages/Yoga%20page/sess5.dart';
import 'package:flutter_new/Pages/Yoga%20page/sess6.dart';
import 'package:google_fonts/google_fonts.dart';



class Yoga extends StatefulWidget {
  const Yoga({super.key});

  @override
  State<Yoga> createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  @override
  Widget build(BuildContext context) {
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
                color: Color(0xff60183e),
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
                        'Yoga',
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
                                'Live happier and healthier by learning the fundamentals of yoga and mindfulness',
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
                                  image: AssetImage('assets/images/Yogaa.png'),
                                  fit: BoxFit.contain)),
                        ))
                      ],
                    ),
                    SizedBox(height: 45),
                    Container(
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Sess1()))
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Sess2()))
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Sess3()))
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Sess4()))
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Sess5()))
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Sess6()))
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
                          MaterialPageRoute(builder: (context) => Yoga1())),
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