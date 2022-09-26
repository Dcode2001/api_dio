import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class eighteen extends StatefulWidget {
  const eighteen({Key? key}) : super(key: key);

  @override
  State<eighteen> createState() => _eighteenState();
}

class _eighteenState extends State<eighteen> {
  List l = [];
  Map? k;
  bool status = false;

  @override
  void initState() {
    super.initState();

    getAllData();
  }

  getAllData() async {
    try {
      var response = await Dio().get('https://dummyjson.com/http/200/Hello%20Peter');
      print(response);
      k = response.data;
      l.add(k);
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
        title: Text("eighteen API"),
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
                Text("status : ${m.status}"),
                Text("message : ${m.message}"),

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
  String? status;
  String? message;

  Acess({this.status, this.message});

  Acess.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}
