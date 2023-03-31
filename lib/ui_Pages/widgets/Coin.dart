import 'dart:convert';

Coin coinFromJson(String str) => Coin.fromJson(json.decode(str));

String coinToJson(Coin data) => json.encode(data.toJson());

class Coin {
  Coin({
    required this.status,
    required this.message,
    required this.data,
  });

  bool status;
  String message;
  List<Datum> data;

  factory Coin.fromJson(Map<String, dynamic> json) => Coin(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.name,
    required this.code,
    required this.price,
    required this.coin,
    required this.icon,
  });

  String? name;
  String? code;
  String? price;
  String? coin;
  String? icon;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        code: json["code"],
        price: json["price"],
        coin: json["coin"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "code": code,
        "price": price,
        "coin": coin,
        "icon": icon,
      };
}
