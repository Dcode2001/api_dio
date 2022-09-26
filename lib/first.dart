import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List l = [];
  bool status = false;

  @override
  void initState() {
    super.initState();

    getAllData();
  }

  getAllData() async {
    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
      print(response);
      l=response.data;
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
        title: Text("First API"),
        centerTitle: true,
      ),
      body: status
          ? ListView.builder(
        itemCount: l.length,
              itemBuilder: (context, index) {

                  Acess m = Acess.fromJson(l[index]);

                  return ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.purple,child: Text("${m.id}",style: TextStyle(color: Colors.white),),),
                    title: Text("UserId:${m.userId}\n\nTitle:${m.title}"),
                    subtitle: Text("Body:${m.body}"),
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
  String? body;

  Acess({this.userId, this.id, this.title, this.body});

  Acess.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}