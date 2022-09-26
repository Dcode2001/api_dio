import 'package:flutter/material.dart';
import 'package:api_dio/eight.dart';
import 'package:api_dio/eleven.dart';
import 'package:api_dio/fifteen.dart';
import 'package:api_dio/five.dart';
import 'package:api_dio/fourteen.dart';
import 'package:api_dio/fouth.dart';
import 'package:api_dio/nine.dart';
import 'package:api_dio/nineteen.dart';
import 'package:api_dio/second.dart';
import 'package:api_dio/seven.dart';
import 'package:api_dio/seventeen.dart';
import 'package:api_dio/six.dart';
import 'package:api_dio/sixteen.dart';
import 'package:api_dio/ten.dart';
import 'package:api_dio/third.dart';
import 'package:api_dio/thirteen.dart';
import 'package:api_dio/twelve.dart';
import 'package:api_dio/twenty.dart';
import 'package:api_dio/twentyfour.dart';
import 'package:api_dio/twentyone.dart';
import 'package:api_dio/twentythree.dart';
import 'package:api_dio/twentytwo.dart';
import 'package:flutter/material.dart';

import 'eighteen.dart';
import 'first.dart';

void main() {
  runApp(MaterialApp(
    home: AllApi(),
  ));
}

class AllApi extends StatefulWidget {
  const AllApi({Key? key}) : super(key: key);

  @override
  State<AllApi> createState() => _AllApiState();
}

class _AllApiState extends State<AllApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select API ON DIO"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Center(
                child: Container(
              alignment: Alignment.center,
              child: Text(
                "Json Place Holder API Link DIO Method",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    decoration: TextDecoration.underline),
              ),
            )),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return first();
                    },
                  ));
                },
                child: Text("1.posts/")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return second();
                    },
                  ));
                },
                child: Text("2.comments/")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return third();
                    },
                  ));
                },
                child: Text("3.albums/")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return fourth();
                    },
                  ));
                },
                child: Text("4.photos/")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return five();
                    },
                  ));
                },
                child: Text("5.todos/")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return six();
                    },
                  ));
                },
                child: Text("6.users/")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return seven();
                    },
                  ));
                },
                child: Text("7.posts/")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return eight();
                    },
                  ));
                },
                child: Text("8.posts/1/")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return nine();
                    },
                  ));
                },
                child: Text("9.posts/1/comments")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ten();
                    },
                  ));
                },
                child: Text("10./comments?postId=1")),
            SizedBox(height: 15),
            Divider(
              height: 4,
              thickness: 4,
              color: Colors.purple,
            ),
            SizedBox(height: 20),
            Center(
                child: Container(
              alignment: Alignment.center,
              child: Text(
                "Dummy Json API Link HTTP Method",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    decoration: TextDecoration.underline),
              ),
            )),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return eleven();
                    },
                  ));
                },
                child: Text("11./products")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return twelve();
                    },
                  ));
                },
                child: Text("12./carts")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return thirteen();
                    },
                  ));
                },
                child: Text("13./users")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return fourteen();
                    },
                  ));
                },
                child: Text("14./posts")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return fifteen();
                    },
                  ));
                },
                child: Text("15./comments")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return sixteen();
                    },
                  ));
                },
                child: Text("16./quotes")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return seventeen();
                    },
                  ));
                },
                child: Text("17./todos")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return eighteen();
                    },
                  ));
                },
                child: Text("18./http")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return nineteen();
                    },
                  ));
                },
                child: Text("19./products")),
            SizedBox(height: 10),
            SizedBox(width: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return twenty();
                    },
                  ));
                },
                child: Text("20./products/1")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return twentyone();
                    },
                  ));
                },
                child: Text("21./products/search?q=Laptop")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return twentytwo();
                    },
                  ));
                },
                child: Text("22./products/categories")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return twentythree();
                    },
                  ));
                },
                child: Text("23./products/category/smartphones")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return twentyfour();
                    },
                  ));
                },
                child: Text("24./auth/products")),
            SizedBox(height: 10),
          ],
        ),
      )),
    );
  }
}
