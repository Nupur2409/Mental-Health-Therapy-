import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_new/Pages/Welcome%20Nup/home.dart';
import 'package:google_fonts/google_fonts.dart';


class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  List? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff9ac1e3),
        appBar: AppBar(
          title: Center(child: Text('Tasks ')),
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
                .loadString('assets/loadjson/data.json'),
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
                                    newData[index]['text'],
                                    //'Note Title',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35, fontFamily: GoogleFonts.acme().fontFamily),
                                  ),
                                ),
                                
                                SizedBox(height: 15,),
                               Image.network(newData[index]['url'], fit: BoxFit.contain),
                               SizedBox(height: 20,),
                               
                                
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