

import 'package:flutter/material.dart';
import 'package:flutter_new/Pages/Zumba/Zumba_1.dart';
import 'package:flutter_new/Pages/Zumba/Zumba_2.dart';
import 'package:flutter_new/Pages/Zumba/Zumba_4.dart';
import 'package:flutter_new/Pages/Zumba/zumba_10.dart';
import 'package:flutter_new/Pages/Zumba/zumba_11.dart';
import 'package:flutter_new/Pages/Zumba/zumba_12.dart';
import 'package:flutter_new/Pages/Zumba/zumba_13.dart';
import 'package:flutter_new/Pages/Zumba/zumba_14.dart';
import 'package:flutter_new/Pages/Zumba/zumba_15.dart';
import 'package:flutter_new/Pages/Zumba/zumba_16.dart';
import 'package:flutter_new/Pages/Zumba/zumba_17.dart';
import 'package:flutter_new/Pages/Zumba/zumba_18.dart';
import 'package:flutter_new/Pages/Zumba/zumba_19.dart';
import 'package:flutter_new/Pages/Zumba/zumba_20.dart';
import 'package:flutter_new/Pages/Zumba/zumba_3.dart';
import 'package:flutter_new/Pages/Zumba/zumba_5.dart';
import 'package:flutter_new/Pages/Zumba/zumba_6.dart';
import 'package:flutter_new/Pages/Zumba/zumba_7.dart';
import 'package:flutter_new/Pages/Zumba/zumba_8.dart';
import 'package:flutter_new/Pages/Zumba/zumba_9.dart';
import 'package:google_fonts/google_fonts.dart';

class Zumba extends StatefulWidget {
  const Zumba({super.key});

  @override
  State<Zumba> createState() => _ZumbaState();
}

class _ZumbaState extends State<Zumba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding:const EdgeInsets.only(top: 100, left: 30, right: 30),
      child: Container(
        child: SingleChildScrollView(physics:BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(child: Text("Your Favourite Zumba",
                style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: GoogleFonts.lora().fontFamily,
                        ),))
              ],
            ),
            SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 1', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba1()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 2', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba2()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 3', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba3()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 4', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba4()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 5', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba5()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 6', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba6()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 7', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba7()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 8', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba8()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 9', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba9()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 10', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba10()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 11', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba11()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 12', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba12()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 13', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba13()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 14', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba14()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 15', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba15()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 16', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba16()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 17', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba17()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 18', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba18()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
                               SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 19', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba19()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
    SizedBox(height: 50,),
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
                    TextButton(child: Text('Day 20', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed:() =>{Navigator.push(context, MaterialPageRoute(builder: (context) => Zumba20()))} ,
                    style: TextButton.styleFrom(padding: EdgeInsets.all(10),
                    minimumSize: Size(350, 50) , 
                    ), 
                
                  )],
                  ),
                              ),
   
   
      ] )))
    ));
  }
}
