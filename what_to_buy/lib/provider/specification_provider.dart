import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:what_to_buy/models/specification.dart';

class SpecificationProvider with ChangeNotifier {
  String url =
      "http://mobileaung.dsv.hoz.mybluehost.me/api/specifications";
  List<Specification> specificationList = [];
  Future<List<Specification>> fetchSpecification() async {
    print("reach function");
    final response = await http.get("$url");
    print("$response");
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print("response data in specification $data");
      var dataList = data['specificates'];
      if (dataList.length > 0) {
        specificationList = [];
        dataList.forEach((value) {
          Specification spec = Specification.fromJson(value);
          specificationList.add(spec);
        });
      }
      return specificationList;
    } else {
      throw Exception("Fail to load specification data");
    }
  }
}
