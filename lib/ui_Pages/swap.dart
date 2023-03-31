import 'dart:async';
import 'dart:convert';

import 'package:crypto/ui_Pages/widgets/Coin.dart';
import 'package:crypto/ui_Pages/widgets/Details.dart';
import 'package:crypto/ui_Pages/widgets/slidder.dart';
import 'package:crypto/ui_Pages/widgets/slidetopay.dart';
import 'package:flutter/material.dart';
import 'package:crypto/ui_Pages/widgets/coincard.dart';
import 'package:http/http.dart' as http;

class Uiswap extends StatefulWidget {
  const Uiswap({super.key});

  @override
  State<Uiswap> createState() => _UiswapState();
}

class _UiswapState extends State<Uiswap> {
  PageController controller = new PageController();
  bool _previous = false;
  bool _mark = false;
  bool _smark = true;
  @override
  // void initState() {
  //   fetchCoin();
  //   Timer.periodic(Duration(seconds: 10), (timer) => fetchCoin());
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Null;
                    },
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Swap ETH",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Ethereum Main Network",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CoinCard(),
              SizedBox(
                height: 10,
              ),
              CoinCard(),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Slippage',
                          style: TextStyle(color: Colors.white),
                        ),
                        _smark
                            ? Container(
                                height: 3,
                                width: 50,
                                decoration: BoxDecoration(color: Colors.blue),
                                child: Text('_'),
                              )
                            : Container(
                                height: 3,
                                width: 50,
                                decoration: BoxDecoration(color: Colors.black),
                              ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Detail', style: TextStyle(color: Colors.white)),
                        _mark
                            ? Container(
                                height: 3,
                                width: 50,
                                decoration: BoxDecoration(color: Colors.blue),
                                child: Text('_'),
                              )
                            : Container(
                                height: 3,
                                width: 50,
                                decoration: BoxDecoration(color: Colors.black),
                              ),
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(20)),
                      height: 180,
                      width: 600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 55,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(20)),
                      height: 130,
                      width: 500,
                      child: PageView(
                          controller: controller,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            Slidder(),
                            Details(),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 190, left: 300),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            _mark = true;
                            _smark = false;
                          });
                          if (_previous) {
                            controller.previousPage(
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeIn);
                            _previous = false;
                            _mark = false;
                            _smark = true;
                          } else {
                            controller.nextPage(
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeIn);
                            _previous = true;
                            _mark = true;
                            _smark = false;
                          }
                        },
                        child: Text(
                          'Done',
                        )),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  height: 55,
                  width: 600,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: pay(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
