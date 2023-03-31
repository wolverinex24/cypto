import 'dart:convert';

import 'package:crypto/ui_Pages/widgets/Coin.dart';
import 'package:crypto/ui_Pages/widgets/coincard.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BottomView extends StatefulWidget {
  const BottomView({super.key});

  @override
  State<BottomView> createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Select an asset',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 8.0, right: 8.0),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30)),
                height: 50,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CoinCard(),
          )
        ],
      ),
    );
  }
}
