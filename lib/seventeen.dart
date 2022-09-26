import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class seventeen extends StatefulWidget {
  const seventeen({Key? key}) : super(key: key);

  @override
  State<seventeen> createState() => _seventeenState();
}

class _seventeenState extends State<seventeen> {
  List l = [];
  bool status = false;

  @override
  void initState() {
    super.initState();

    getAllData();
  }

  getAllData() async {
    try {
      var response = await Dio().get('https://dummyjson.com/todos');
      print(response);
      l = response.data["todos"];
      setState(() {
        status = true;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("seventeen API"),
        centerTitle: true,
      ),
      body: status
          ? ListView.builder(
        shrinkWrap: true,
        primary: true,
        itemCount: l.length,
        itemBuilder: (context, index) {
          Acess m = Acess.fromJson(l[index]);

          return Card(
            color: Colors.purple.shade100,
            margin: EdgeInsets.all(4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Id : ${m.id}"),
                Text("todo : ${m.todo}"),
                Text("completed : ${m.completed}"),
                Text("userId : ${m.userId}"),
              ],
            ),
          );
        },
      )
          : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

// Json To Dart Class

class Acess {
  int? id;
  String? todo;
  bool? completed;
  int? userId;

  Acess({this.id, this.todo, this.completed, this.userId});

  Acess.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    todo = json['todo'];
    completed = json['completed'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['todo'] = this.todo;
    data['completed'] = this.completed;
    data['userId'] = this.userId;
    return data;
  }
}
