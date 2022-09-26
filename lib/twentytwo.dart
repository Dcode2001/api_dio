import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class twentytwo extends StatefulWidget {
  const twentytwo({Key? key}) : super(key: key);

  @override
  State<twentytwo> createState() => _twentytwoState();
}

class _twentytwoState extends State<twentytwo> {
  List l = [];
  bool status = false;

  @override
  void initState() {
    super.initState();

    getAllData();
  }

  getAllData() async {
    try {
      var response = await Dio().get('https://dummyjson.com/products/categories');
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
        title: Text("twentytwo API"),
        centerTitle: true,
      ),
      body: status
          ? ListView.builder(
        itemCount: l.length,
        itemBuilder: (context, index) {

          // Map m = l[index];
          return Card(
            color: Colors.purple.shade100,
            margin: EdgeInsets.all(4),
            child:
                Center(child: Text("${l[index]}")),
          );
        },
      )
          : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

