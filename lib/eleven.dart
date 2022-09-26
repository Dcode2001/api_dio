import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class eleven extends StatefulWidget {
  const eleven({Key? key}) : super(key: key);

  @override
  State<eleven> createState() => _elevenState();
}

class _elevenState extends State<eleven> {
  // List l = [];
  bool status = false;
  AcessData? d;
  Map<String, dynamic> map = {};

  @override
  void initState() {
    super.initState();

    getAllData();
  }

  getAllData() async {
    try {
      var response = await Dio().get('https://dummyjson.com/products');
      print(response);
      map = response.data;
      d = AcessData.fromJson(map);
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
        title: Text("eleven API"),
        centerTitle: true,
      ),
      body: status
          ?
            ListView.builder(
              shrinkWrap: true,
              // primary: true,
              itemCount: d!.products!.length,
              itemBuilder: (context, index) {
                return Card(
                    elevation: 4,
                    child: ListTile(
                      leading: CircleAvatar(child: Text("${d!.products![index].id}")),
                      title: Text("Titel : ${d!.products![index].title}"),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("description : ${d!.products![index].description}"),
                          Text("Price : ${d!.products![index].price}"),
                          Text("discountPercentage : ${d!.products![index].discountPercentage}"),
                          Text("rating : ${d!.products![index].rating}"),
                          Text("stock : ${d!.products![index].stock}"),
                          Text("brand : ${d!.products![index].brand}"),
                          Text("category : ${d!.products![index].category}"),
                          Text("thumbnail : ${d!.products![index].thumbnail}"),
                          Text("Images::"),
                          ListView.builder(
                            primary: true,
                            shrinkWrap: true,
                            itemCount: d!.products![index].images!.length,
                            itemBuilder: (context, index1) {
                              return Text("${d!.products![index].images![index1]}");
                            },)
                        ],
                      ),
                    ));
              },
            )

          : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

// Json To Dart Class

class AcessData {
  List<Products>? products;
  int? total;
  int? skip;
  int? limit;

  AcessData({this.products, this.total, this.skip, this.limit});

  AcessData.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['skip'] = this.skip;
    data['limit'] = this.limit;
    return data;
  }
}

class Products {
  int? id;
  String? title;
  String? description;
  int? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;

  Products(
      {this.id,
        this.title,
        this.description,
        this.price,
        this.discountPercentage,
        this.rating,
        this.stock,
        this.brand,
        this.category,
        this.thumbnail,
        this.images});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    rating = double.parse(json['rating'].toString());
    stock = json['stock'];
    brand = json['brand'];
    category = json['category'];
    thumbnail = json['thumbnail'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['discountPercentage'] = this.discountPercentage;
    data['rating'] = this.rating;
    data['stock'] = this.stock;
    data['brand'] = this.brand;
    data['category'] = this.category;
    data['thumbnail'] = this.thumbnail;
    data['images'] = this.images;
    return data;
  }
}
