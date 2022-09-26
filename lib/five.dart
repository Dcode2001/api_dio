import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class five extends StatefulWidget {
  const five({Key? key}) : super(key: key);

  @override
  State<five> createState() => _fiveState();
}

class _fiveState extends State<five> {
  List l = [];
  bool status = false;

  @override
  void initState() {
    super.initState();

    getAllData();
  }

  getAllData() async {
    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/todos');
      print(response);
      l = response.data;
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
        title: Text("five API"),
        centerTitle: true,
      ),
      body: status
          ? ListView.builder(
        itemCount: l.length,
        itemBuilder: (context, index) {

          Acess m = Acess.fromJson(l[index]);

          return ListTile(
            leading: CircleAvatar(backgroundColor: Colors.purple,child: Text("${m.id}",style: TextStyle(color: Colors.white),),),
            title: Text("Title:${m.title}\n\ncompleted:${m.completed}"),
            subtitle: Text("UserId:${m.userId}\n"),
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
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Acess({this.userId, this.id, this.title, this.completed});

  Acess.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['completed'] = this.completed;
    return data;
  }
}