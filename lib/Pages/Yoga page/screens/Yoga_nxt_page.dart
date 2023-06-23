import 'package:flutter/material.dart';
import 'package:flutter_new/Pages/Meditation/begin1.dart';
import 'package:flutter_new/Pages/Meditation/begin2.dart';
import 'package:flutter_new/Pages/Meditation/begin3.dart';
import 'package:flutter_new/Pages/Meditation/begin4.dart';
import 'package:flutter_new/Pages/Meditation/begin5.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/Yog1.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/yog10.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/yog11.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/yog14.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/yog15.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/yog2.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/yog3.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/yog4.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/yog5.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/yog6.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/yog7.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/yog8.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/yog9.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/yoga12.dart';
import 'package:flutter_new/Pages/Yoga%20page/StartYoga/yoga13.dart';
import 'package:google_fonts/google_fonts.dart';

class Yoga1 extends StatefulWidget {
  const Yoga1({super.key});

  @override
  State<Yoga1> createState() => Yoga1State();
}

class Yoga1State extends State<Yoga1> {
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
                  "Yoga ",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.adamina().fontFamily),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Text(
                    'Yoga for beginners',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 15,
                          spreadRadius: 1)
                    ]),
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(50),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/img 1.png'))),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Your 1st Yoga ',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Start and deepen your patience',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => yog1()))
                      },
                      icon: Icon(
                        Icons.play_circle_fill_sharp,
                        size: 40,
                        color: Colors.black,
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/M1.jpg'))),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '1st Stage',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Start and deepen your patience',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yog2()))
                    },
                    icon: Icon(
                      Icons.play_circle_fill_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/mm8.png'))),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Basic',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Start and deepen your patience',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yog3()))
                    },
                    icon: Icon(
                      Icons.play_circle_fill_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/mm7.jpg'))),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Little higher ',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Start and deepen your patience',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yog4()))
                    },
                    icon: Icon(
                      Icons.play_circle_fill_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/mm6.jpg'))),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Almost Complete',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Start and deepen your patience',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yog5()))
                    },
                    icon: Icon(
                      Icons.play_circle_fill_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              children: [
                Text(
                  'Yoga for Intermediate',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 15,
                          spreadRadius: 1)
                    ]),
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(50),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_tJGVCzZkxPXsQBbhe2ZRwTa2QzBdn8SiSA&usqp=CAU',
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'You Did it ',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Start and deepen your patience',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => yog6()))
                      },
                      icon: Icon(
                        Icons.play_circle_fill_sharp,
                        size: 40,
                        color: Colors.black,
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://img.freepik.com/premium-vector/office-worker-yoga-pose-meditation-work-calm-relaxation-stress-reduce-illustration-cartoon-style_277904-4487.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'A little More',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Start and deepen your patience',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yog7()))
                    },
                    icon: Icon(
                      Icons.play_circle_fill_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.shopify.com/s/files/1/2745/9950/articles/3-ways-meditation-keeps-us-young-500641_564x.jpg?v=1660718573'),
                            fit: BoxFit.cover)),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Great, it was tough',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Start and deepen your patience',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yog8()))
                    },
                    icon: Icon(
                      Icons.play_circle_fill_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.squarespace-cdn.com/content/v1/5e1dfa641753bf6164e131d8/1589822061991-SD13BCQN220U9L4QP7F2/free_your_mind_birdcage_birds_freedom_screenprint_katie_edwards_illustration_art.jpg?format=750w'),
                            fit: BoxFit.cover)),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Ik it is Easy',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Start and deepen your patience',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yog9()))
                    },
                    icon: Icon(
                      Icons.play_circle_fill_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://img.freepik.com/free-vector/mindfulness-concept-illustration_114360-1152.jpg?w=2000'),
                            fit: BoxFit.cover)),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Almost Complete',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Start and deepen your patience',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yog10()))
                    },
                    icon: Icon(
                      Icons.play_circle_fill_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              children: [
                Text(
                  'Yoga for Advanced',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 15,
                          spreadRadius: 1)
                    ]),
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(50),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/img 1.png'))),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Your Advanced Yoga ',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Start and deepen your patience',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => yog11()))
                      },
                      icon: Icon(
                        Icons.play_circle_fill_sharp,
                        size: 40,
                        color: Colors.black,
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/M1.jpg'))),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Feeling Great',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Start and deepen your patience',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yog12()))
                    },
                    icon: Icon(
                      Icons.play_circle_fill_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/mm8.png'))),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Its Normal Now',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Start and deepen your patience',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yog13()))
                    },
                    icon: Icon(
                      Icons.play_circle_fill_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/mm7.jpg'))),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Best Thing to do',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Start and deepen your patience',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yog14()))
                    },
                    icon: Icon(
                      Icons.play_circle_fill_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ]),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/mm6.jpg'))),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'I will Recommend this App',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Start and deepen your patience',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yog15()))
                    },
                    icon: Icon(
                      Icons.play_circle_fill_sharp,
                      size: 40,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ]))),
    );
  }
}
