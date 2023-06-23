import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_new/Pages/Welcome%20Nup/home.dart';
import 'package:google_fonts/google_fonts.dart';


class Therapy extends StatefulWidget {
  @override
  _TherapyState createState() => _TherapyState();
}

class _TherapyState extends State<Therapy> {
  List? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff9ac1e3),
        appBar: AppBar(
          title: Center(child: Text('Recommend Therapist')),
          backgroundColor: Color(0xff0d2241), leading: IconButton(onPressed: () 
            
          => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              )
            }, icon: 
            Icon(Icons.arrow_back,)
        ),),
        body: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/loadjson/task.json'),
            builder: (context, snapshot) {
              // Decode the JSON
              var newData = json.decode(snapshot.data.toString());

              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 32, bottom: 32, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {},
                                  child: 
                                  
                                  Text(
                                    newData[index]['title'],
                                    //'Note Title',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35, fontFamily: GoogleFonts.acme().fontFamily),
                                  ),
                                ),
                                
                                SizedBox(height: 15,),
                              Text(newData[index]['text'], style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20, fontFamily: GoogleFonts.acme().fontFamily), ),
                               SizedBox(height: 20,),
                               Text(newData[index]['phone'], style: TextStyle(fontWeight: FontWeight.normal,
                                        fontSize: 20, fontFamily: GoogleFonts.acme().fontFamily)), 
                                SizedBox(height: 10,),
                                Text(newData[index] ['biography'], style: TextStyle(fontSize: 17, fontFamily: GoogleFonts.aclonica().fontFamily, color: Colors.black54),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: newData == null ? 0 : newData.length,
              );
            },
          ),
     ) );
  }
}