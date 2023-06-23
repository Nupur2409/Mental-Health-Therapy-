import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyFirestoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mental Health Analysis'),
      ),
      
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('mental_health_analysis').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) { 
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading...");
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data = document.data() as Map<String, dynamic>;
              return ListTile( 
                title: Text(data['task']),
                subtitle: Text(data['completed'] ? 'Completed' : 'Not Completed'),
                
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
