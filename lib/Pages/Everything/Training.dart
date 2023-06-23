

import 'package:flutter/material.dart';


import 'package:flutter_new/Pages/Meet%20Frnds/Meet_ur_frnds.dart';
import 'package:flutter_new/Pages/Zumba/Zumba.dart';
import 'package:flutter_new/Pages/Exercise/cycling.dart';
import 'package:flutter_new/Pages/Exercise/running.dart';
import 'package:flutter_new/Pages/Exercise/walk.dart';



class Exercise extends StatefulWidget {
  const Exercise({super.key});

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text("Training", style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                  ),),
                 
                ],
              ),
           SizedBox(height: 30,),
           Row(
            children: [
              Text("Exercise",
              style: TextStyle(
               fontSize: 20,
                    color: Colors.blueGrey,
                    
              ),),
              Expanded(child: Container()),
              
              ],
           ),
           SizedBox( height: 20,),
           Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            
            decoration: BoxDecoration(
              gradient: LinearGradient(colors:[
                Color(0xff1e3f66),
                Color(0xffbcd2e8)
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(50)),
              boxShadow: [BoxShadow(offset: Offset(5,10),
              blurRadius: 10,
              color: Color(0xffbcd2e8).withOpacity(0.2)
             
              )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 10, right: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Walking",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(height: 0.15),
                  Row(
                    children: [
                      Row( crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.timer_outlined, size: 20, color: Colors.white,),
                          SizedBox(width: 10,),
                          Text("60 min",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                 
                        ],
                      ),
                    
                         
                         
                          Expanded(child: Container(),),
                      
          Padding(padding: EdgeInsets.only(top: 10, bottom: 0.6),),
             
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(105),
                        boxShadow: [
                          BoxShadow(
                            
                            color:Color(0xff1e3f66),
                            blurRadius: 15,
                            offset: Offset(2, 2),
                          )
                        ],
                      ),
                        child: IconButton( icon: 
                         Icon(Icons.play_circle_fill, color: Colors.white, size:40 ,), onPressed: () => { 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Walking()))
                          },)),
                    ],
                  ),
                   ],
                  )
                ],
              ), 
            ),
            
           ),
           SizedBox(height: 20,),
           Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            
            decoration: BoxDecoration(
              gradient: LinearGradient(colors:[
                Color(0xff1e3f66),
                Color(0xffbcd2e8)
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(50)),
              boxShadow: [BoxShadow(offset: Offset(5,10),
              blurRadius: 10,
              color: Color(0xffbcd2e8).withOpacity(0.2)
             
              )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 10, right: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Running",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(height: 0.15),
                  Row(
                    children: [
                      Row( crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.timer_outlined, size: 20, color: Colors.white,),
                          SizedBox(width: 10,),
                          Text("45 min",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                 
                        ],
                      ),
                    
                         
                         
                          Expanded(child: Container(),),
                      
          Padding(padding: EdgeInsets.only(top: 10, bottom: 0.6),),
             
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(105),
                        boxShadow: [
                          BoxShadow(
                            
                            color:Color(0xff1e3f66),
                            blurRadius: 15,
                            offset: Offset(2, 2),
                          )
                        ],
                      ),
                        child: IconButton( icon: 
                         Icon(Icons.play_circle_fill, color: Colors.white, size:40 ,), onPressed: () => { 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Running(),)) 
                          },)
           )
            ],
          ),
                ],
            ),
            ])
            )
            ) ,
            SizedBox(height: 20,),
           Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            
            decoration: BoxDecoration(
              gradient: LinearGradient(colors:[
                Color(0xff1e3f66),
                Color(0xffbcd2e8)
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(50)),
              boxShadow: [BoxShadow(offset: Offset(5,10),
              blurRadius: 10,
              color: Color(0xffbcd2e8).withOpacity(0.2)
             
              )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 10, right: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Cycling",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(height: 0.15),
                  Row(
                    children: [
                      Row( crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.timer_outlined, size: 20, color: Colors.white,),
                          SizedBox(width: 10,),
                          Text("45 min",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                 
                        ],
                      ),
                    
                         
                         
                          Expanded(child: Container(),),
                      
          Padding(padding: EdgeInsets.only(top: 10, bottom: 0.6),),
             
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(105),
                        boxShadow: [
                          BoxShadow(
                            
                            color:Color(0xff1e3f66),
                            blurRadius: 15,
                            offset: Offset(2, 2),
                          )
                        ],
                      ),
                        child: IconButton( icon: 
                         Icon(Icons.play_circle_fill, color: Colors.white, size:40 ,), onPressed: () => { 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Cycling(),)) 
                          },)
           )
            ],
          ),
                ],
            ),
            ])
            )
            ),
            SizedBox(height: 20,),
           Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            
            decoration: BoxDecoration(
              gradient: LinearGradient(colors:[
                Color(0xff1e3f66),
                Color(0xffbcd2e8)
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(50)),
              boxShadow: [BoxShadow(offset: Offset(5,10),
              blurRadius: 10,
              color: Color(0xffbcd2e8).withOpacity(0.2)
             
              )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 10, right: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Zumba",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(height: 0.15),
                  Row(
                    children: [
                      Row( crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                          Icon(Icons.timer_outlined, size: 20, color: Colors.white,),
                          SizedBox(width: 10,),
                          Text("45-60 min",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                 
                        ],
                       
                      ),
                    
                         
                         
                          Expanded(child: Container(),),
                      
          Padding(padding: EdgeInsets.only(top: 10, bottom: 0.6),),
             
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(105),
                        boxShadow: [
                          BoxShadow(
                            
                            color:Color(0xff1e3f66),
                            blurRadius: 15,
                            offset: Offset(2, 2),
                          )
                        ],
                      ),
                        child: IconButton( icon: 
                         Icon(Icons.play_circle_fill, color: Colors.white, size:40 ,), onPressed: () => { 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba(),)) 
                          },)
           )
            ],
          ),
                ],
            ),
            ])
            )
            )  ,
             SizedBox(height: 20,),
           Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            
            decoration: BoxDecoration(
              gradient: LinearGradient(colors:[
                Color(0xff1e3f66),
                Color(0xffbcd2e8)
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(50)),
              boxShadow: [BoxShadow(offset: Offset(5,10),
              blurRadius: 10,
              color: Color(0xffbcd2e8).withOpacity(0.2)
             
              )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 10, right: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Meet Your Friends",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(height: 0.15),
                  Row(
                    children: [
                      Row( crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                          Icon(Icons.timer_outlined, size: 20, color: Colors.white,),
                          SizedBox(width: 10,),
                          Text("45-60 min",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                 
                        ],
                       
                      ),
                    
                         
                         
                          Expanded(child: Container(),),
                      
          Padding(padding: EdgeInsets.only(top: 10, bottom: 0.6),),
             
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      Container( decoration: BoxDecoration( borderRadius: BorderRadius.circular(105),
                        boxShadow: [
                          BoxShadow(
                            
                            color:Color(0xff1e3f66),
                            blurRadius: 15,
                            offset: Offset(2, 2),
                          )
                        ],
                      ),
                        child: IconButton( icon: 
                         Icon(Icons.play_circle_fill, color: Colors.white, size:40 ,), onPressed: () => { 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TalkSomeone(),)) 
                          },)
           )
            ],
          ),
                ],
            ),
            ])
            )
            )  ,
            
            ]),
        )
      )
    );
     
  }
}