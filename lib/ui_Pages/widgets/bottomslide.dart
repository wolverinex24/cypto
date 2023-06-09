import 'dart:convert';

import 'package:crypto/ui_Pages/widgets/Coin.dart';
import 'package:crypto/ui_Pages/widgets/coincard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

import '../../controller/Coin_controller.dart';

class BottomView extends StatefulWidget {
  const BottomView({super.key});

  @override
  State<BottomView> createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {
  OpenseaController openseaController = Get.put(OpenseaController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: SingleChildScrollView(
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
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      'Popular tokens',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 8.0, right: 8.0),
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
                      style: TextStyle(color: Colors.white),
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
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: openseaController.openseaModel?.data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: CoinCard(
                        name: openseaController.openseaModel?.data[index].name,
                        code: openseaController.openseaModel?.data[index].code,
                        imageUrl:
                            openseaController.openseaModel?.data[index].icon,
                        price:
                            openseaController.openseaModel?.data[index].price,
                        coin: openseaController.openseaModel?.data[index].coin,
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
  // void _runfilter(String enteredKeyword){
  //   List<collegeClass> results=[];
  //   if(enteredKeyword.isEmpty){
  //     results=;
  //   }else{
  //     results=_allcoins.where((item)=>item.names!.toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
  //   }
  //   setState(() {
  //     _foundlist=results;
  //   });
  // }
}
