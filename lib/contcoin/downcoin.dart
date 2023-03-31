import 'package:crypto/controller/Coin_controller.dart';
import 'package:crypto/ui_Pages/widgets/bottomslide.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Downcoin extends StatelessWidget {
  // const Downcoin({super.key});

  OpenseaController openseaController = Get.put(OpenseaController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 2,
              color: Colors.grey,
            )),
        height: 100,
        width: 400,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5.0, bottom: 15.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 40,
                    width: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
                      child: Image.network(
                          "https://s2.coinmarketcap.com/static/img/coins/64x64/1.png"),
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Text(
                    "Balance 0",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.black,
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    child: BottomView(),
                                    height: 400,
                                  );
                                });
                          },
                          child: Text(
                            "BTC",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: TextButton.styleFrom(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 1.0),
                        child: Container(
                            height: 10,
                            width: 10,
                            child:
                                Image.asset('assets/expanddownlight-4kG.png')),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '1814789.18',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '0.5',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
