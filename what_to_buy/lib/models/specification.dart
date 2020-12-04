import 'package:flutter/cupertino.dart';
import 'package:what_to_buy/models/categories.dart';

class Specification {
  final Category category;
  final String cpu;
  final String memory;
  final String mainCamera;
  final String selfieCamera;
  final String battery;
  final String features;
  final String display;
  final String capacity;
  final String price;
  final String image;
  final String os;
  final String date;
  final String review;
  final String youtube;
  final String cpuRank;
  final String gpuRank;
  final String memoryRank;
  final String uxRank;
  final String total;
  final String specifications;
  Specification({
    @required this.category,
    @required this.cpu,
    @required this.memory,
    @required this.mainCamera,
    @required this.selfieCamera,
    @required this.battery,
    @required this.features,
    @required this.display,
    @required this.capacity,
    @required this.price,
    @required this.image,
    @required this.os,
    @required this.date,
    @required this.review,
    @required this.youtube,
    @required this.cpuRank,
    @required this.gpuRank,
    @required this.memoryRank,
    @required this.uxRank,
    @required this.total,
    @required this.specifications,
  });
  factory Specification.fromJson(Map<String, dynamic> json) => Specification(
      category: Category.fromJson(json['category']),
      cpu: json['cpu'],
      memory: json['memory'],
      mainCamera: json['main_camera'],
      selfieCamera: json['selfie_camera'],
      battery: json['battery'],
      features: json['features'],
      display: json['display'],
      capacity: json['capacity'],
      price: json['price'],
      image: json['image'],
      os: json['os'],
      date: json['date'],
      review: json['review'],
      youtube: json['youtube'],
      cpuRank: json['cpu_rank'],
      gpuRank: json['gpu_rank'],
      memoryRank: json['memory_rank'],
      uxRank: json['ux_rank'],
      total: json['total'],
      specifications: json['specifications']);
}
