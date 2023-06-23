import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Task {
  String description;
  DateTime dueDate;
  bool completed;

  Task({required this.description, required this.dueDate, required this.completed});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskListScreen(),
    );
  }
}

class TaskListScreen extends StatelessWidget {
  final CollectionReference tasksRef = FirebaseFirestore.instance.collection('tasks');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: tasksRef.snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          List<Task> tasks = snapshot.data!.docs.map((doc) {
            return Task(
              description: doc['description'],
              dueDate: doc['dueDate'].toDate(),
              completed: doc['completed'],
            );
          }).toList();

          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(tasks[index].description),
                subtitle: Text(tasks[index].dueDate.toString()),
                trailing: Checkbox(
                  value: tasks[index].completed,
                  onChanged: (value) {
                    tasks[index].completed = value!;
                    tasksRef.doc(snapshot.data!.docs[index].id).update({
                      'completed': value,
                    });
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          tasksRef.add({
            'description': 'Task 3',
            'dueDate': DateTime.now().add(Duration(days: 1)),
            'completed': false,
          });
          tasksRef.add({
            'description': 'Task 4',
            'dueDate': DateTime.now().add(Duration(days: 2)),
            'completed': false,
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}