import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Thankyou extends StatefulWidget {
  const Thankyou({super.key});

  @override
  State<Thankyou> createState() => _ThankyouState();
}

class _ThankyouState extends State<Thankyou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
     
      body: Container( width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xffd9c1e0),
      child: 
      Center(
        child: Text("Thank You For Attending the Session" , 
        style: TextStyle(fontFamily: GoogleFonts.flamenco().fontFamily,
         fontSize: 40, fontWeight: FontWeight.bold, ),
          textAlign: TextAlign.center,
      
        ),
        
      
      ),
      
      

     ), 
      );
  }
}