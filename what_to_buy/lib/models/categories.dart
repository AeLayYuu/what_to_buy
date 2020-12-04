import 'package:flutter/cupertino.dart';

class Category {
  final int id;
  final String name;
  final Brand brand;
  final Type type;
  Category(
      {@required this.id,
      @required this.name,
      @required this.brand,
      @required this.type});
  factory Category.fromJson(Map<String, dynamic> json) => Category(
      id: json['id'],
      name: json['name'],
      brand: Brand.fromJson(json['brand']),
      type: Type.fromJson(json['type']));
}

class Brand {
  final int id;
  final String bname;
  final String image;
  Brand({@required this.id, @required this.bname, @required this.image});
  factory Brand.fromJson(Map<String, dynamic> json) =>
      Brand(id: json['id'], bname: json['bname'], image: json['image']);
}

class Type {
  final int id;
  final String bname;
  Type({@required this.id, @required this.bname});
  factory Type.fromJson(Map<String, dynamic> json) =>
      Type(id: json['id'], bname: json['bname']);
}
