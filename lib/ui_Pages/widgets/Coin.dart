import 'package:flutter/material.dart';

class Coin {
  Coin({
    @required this.name,
    @required this.code,
    @required this.imageUrl,
    @required this.price,
  });

  String? name;
  String? code;
  String? imageUrl;
  num? price;

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
      name: json['name'],
      code: json['code'],
      imageUrl: json['icon'],
      price: json['price'],
    );
  }
}

List<Coin> coinList = [];
