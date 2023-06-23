import 'package:flutter/material.dart';
import 'package:flutter_new/Pages/Everything/Meditation.dart';
import 'package:flutter_new/Pages/Exercise/Dance.dart';
import 'package:flutter_new/Pages/Exercise/walk.dart';
import 'package:flutter_new/Pages/StressGame/Games.dart';
import 'package:flutter_new/Pages/Meet%20Frnds/Meet_ur_frnds.dart';

class Stress extends StatefulWidget {
  const Stress({super.key});

  @override
  State<Stress> createState() => _StressState();
}

class _StressState extends State<Stress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "Whats do you like",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff1e3f66), Color(0xffbcd2e8)],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(5, 10),
                            blurRadius: 10,
                            color: Color(0xffbcd2e8).withOpacity(0.2))
                      ]),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Walking",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 0.15),
                        Row(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.timer_outlined,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "60 min",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 0.6),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(105),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xff1e3f66),
                                          blurRadius: 15,
                                          offset: Offset(2, 2),
                                        )
                                      ],
                                    ),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.play_circle_fill,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      onPressed: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Walking()))
                                      },
                                    )),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff1e3f66), Color(0xffbcd2e8)],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(5, 10),
                              blurRadius: 10,
                              color: Color(0xffbcd2e8).withOpacity(0.2))
                        ]),
                    child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 10, right: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Meditation",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 0.15),
                              Row(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.timer_outlined,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                     
                                    ],
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 0.6),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(105),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xff1e3f66),
                                                blurRadius: 15,
                                                offset: Offset(2, 2),
                                              )
                                            ],
                                          ),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.play_circle_fill,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                            onPressed: () => {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        MeditationPage(),
                                                  ))
                                            },
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            ]))),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff1e3f66), Color(0xffbcd2e8)],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(5, 10),
                              blurRadius: 10,
                              color: Color(0xffbcd2e8).withOpacity(0.2))
                        ]),
                    child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 10, right: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Do you want to talk to someone",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 0.15),
                              Row(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.timer_outlined,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                     
                                    ],
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 0.6),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(105),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xff1e3f66),
                                                blurRadius: 15,
                                                offset: Offset(2, 2),
                                              )
                                            ],
                                          ),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.play_circle_fill,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                            onPressed: () => {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        TalkSomeone(),
                                                  ))
                                            },
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            ]))),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff1e3f66), Color(0xffbcd2e8)],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(5, 10),
                              blurRadius: 10,
                              color: Color(0xffbcd2e8).withOpacity(0.2))
                        ]),
                    child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 10, right: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Games",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 0.15),
                              Row(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.timer_outlined,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                     
                                    ],
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 0.6),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(105),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xff1e3f66),
                                                blurRadius: 15,
                                                offset: Offset(2, 2),
                                              )
                                            ],
                                          ),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.play_circle_fill,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                            onPressed: () => {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Games(),
                                                  ))
                                            },
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            ]))),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff1e3f66), Color(0xffbcd2e8)],
                          begin: Alignment.bottomLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(5, 10),
                              blurRadius: 10,
                              color: Color(0xffbcd2e8).withOpacity(0.2))
                        ]),
                    child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 10, right: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dance",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 0.15),
                              Row(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.timer_outlined,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "45-60 min",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 0.6),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(105),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xff1e3f66),
                                                blurRadius: 15,
                                                offset: Offset(2, 2),
                                              )
                                            ],
                                          ),
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.play_circle_fill,
                                              color: Colors.white,
                                              size: 40,
                                            ),
                                            onPressed: () => {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Dance(),
                                                  ))
                                            },
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            ]))),
              ]),
            )));
  }
}
