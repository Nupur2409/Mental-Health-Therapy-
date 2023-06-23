import 'package:flutter/material.dart';
import 'package:flutter_new/Pages/StressGame/Game_1.dart';
import 'package:flutter_new/Pages/StressGame/Game_2.dart';
import 'package:flutter_new/Pages/StressGame/Game_3.dart';
import 'package:flutter_new/Pages/StressGame/Game_4.dart';
import 'package:flutter_new/Pages/StressGame/Game_5.dart';
import 'package:google_fonts/google_fonts.dart';


class Games extends StatefulWidget {
  const Games({super.key});

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(  
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
            child: Container(
                child: SingleChildScrollView( physics: BouncingScrollPhysics(),
                  child: Column(children: [
                              Row(
                  children: [
                    Text(
                      "Your Favourite Zumba",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoogleFonts.lora().fontFamily,
                      ),
                    ),
                  ],
                              ),
                              SizedBox(
                  height: 50,
                              ),
                              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children:<Widget> [ Positioned.fill(child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: <Color> [
                          Color(0xff1e3f66),
                Color(0xffbcd2e8)
                        ],
                        begin: Alignment.topCenter,end: Alignment.bottomCenter) 
                      ),
                    )), 
                    TextButton(child: Text('Game 1', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Game1()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 30,),
                              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children:<Widget> [ Positioned.fill(child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xff1e3f66),
                Color(0xffbcd2e8)
                        ],
                        begin: Alignment.topCenter,end: Alignment.bottomCenter) 
                      ),
                    )),
                    TextButton(child: Text('Day 2', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Game2()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                              SizedBox(height: 30,),
                              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children:<Widget> [ Positioned.fill(child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: <Color> [
                          Color(0xff1e3f66),
                Color(0xffbcd2e8)
                        ],
                        begin: Alignment.topCenter,end: Alignment.bottomCenter) 
                      ),
                    )),
                    TextButton(child: Text('Day 3', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Game3()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                              SizedBox(height: 30,),
                              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children:<Widget> [ Positioned.fill(child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: <Color> [
                          Color(0xff1e3f66),
                Color(0xffbcd2e8)
                        ],
                        begin: Alignment.topCenter,end: Alignment.bottomCenter) 
                      ),
                    )),
                    TextButton(child: Text('Day 4', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Game4()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                              SizedBox(height: 30,),
                              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children:<Widget> [ Positioned.fill(child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: <Color> [
                          Color(0xff1e3f66),
                Color(0xffbcd2e8)
                        ],
                        begin: Alignment.topCenter,end: Alignment.bottomCenter) 
                      ),
                    )),
                    TextButton(child: Text('Day 5', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Game5()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                          
                
                ]
                  )
            
                )
                )
                )
            );
  }
}

    