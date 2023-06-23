import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/Pages/Everything/Everything.dart';
import 'package:flutter_new/Pages/Nearby%20Data/splash.dart';
import 'package:flutter_new/chatbot/chat_screen.dart';

import 'package:google_fonts/google_fonts.dart';
import '../How are u feeling/survey.dart';
import '../LoginSystem/welcome.dart';
import '../LoginSystem/signup_screens.dart';
import '../Nearby Data/therapy.dart';
import '../LoginSystem/signin_screens.dart';
import '../../model/user_model.dart';

import 'package:firebase_database/firebase_database.dart';

class Home extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  late int selectedRadioButton;

  final databaseReference = FirebaseDatabase.instance.reference();

  setSelectedRadioButton(int value) {
    setState(() {
      selectedRadioButton = value;
    });

    databaseReference.child("feeling").set({"feeling": value});
  }

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users") //get the collection
        .doc(user!.uid) //get the user id
        .get() //getting all the values from the database
        .then((value) {
      this.loggedInUser = UserModel.fromMap(
          value.data()); //converting the data into a user model
      setState(() {}); //updating the state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.all(10),
                margin:
                    EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 00),
                child: Text("Welcome ${loggedInUser.name},",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: GoogleFonts.lora().fontFamily))),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30, right: 0, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today’s check-in',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                  Text(
                    'Let’s see how you’re doing!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontFamily: GoogleFonts.alegreya().fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      // margin:
                      //     EdgeInsets.only(left: 00, top: 0, right: 0, bottom: 0),
                      child: Image.asset('assets/images/Survey.jpg',
                          height: 95, width: 95, fit: BoxFit.cover)),
                  Container(
                      margin: EdgeInsets.all(5),
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.black))),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff0d2241)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Survey()),
                          );
                        },
                        child: Text('    Continue    '),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30, right: 0, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Take your next step',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                  Text(
                    'Continue with your Exercises',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontFamily: GoogleFonts.alegreya().fontFamily),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(5),
                      height: 50,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.black))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff0d2241)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Everything()),
                            );
                          },
                          child: Text(
                            "     Let's Go     ",
                          ))),
                  Container(
                    // margin:
                    //     EdgeInsets.only(left: 00, top: 0, right: 0, bottom: 0),
                    child: Image.asset('assets/images/exercise.jpg',
                        height: 75, width: 75, fit: BoxFit.cover),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 00, top: 30, right: 0, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(5),
                      child: Center(
                          child: Text(
                              "See our Top Recommended Wellness Specialist",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: GoogleFonts.roboto().fontFamily,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )))),
                  Container(
                      margin: EdgeInsets.all(0),
                      // height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.black))),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff0d2241)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SplashScreen()),
                          );
                        },
                        child: Text(
                          "     Get Started Now     ",
                        ),
                      )),
                ],
              ),
            ),
            Container(
              // padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 00, top: 0, right: 0, bottom: 20),
              child: Center(
                  child: Image.asset('assets/images/therapy.jpg',
                      height: 75, width: 75, fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Column(
              children: [
                ActionChip(
                  label: Text("Logout"),
                  onPressed: () => {
                    logout(context),
                  },
                  backgroundColor: Colors.black,
                  elevation: 10,
                  labelStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)),
                  padding: EdgeInsets.all(15),
                ),
               
                GestureDetector(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatScreen()));
                  }),
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 250, top: 0, right: 0, bottom: 100),
                    child: (Image(
                      image: AssetImage(
                        "assets/images/chatbot_RB.png",
                      ),
                      width: 200,
                      height: 175,
                    )),
                  ),
                )
              ],
            ))
          ],
        ));
  }

//LOGOUT FUNCTION
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Welcome()));
  }
}
