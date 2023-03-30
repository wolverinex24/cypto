import 'package:flutter/material.dart';

class Uiswap extends StatefulWidget {
  const Uiswap({super.key});

  @override
  State<Uiswap> createState() => _UiswapState();
}

class _UiswapState extends State<Uiswap> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
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
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 2,
                      color: Colors.grey,
                    )),
                height: 100,
                width: 400,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Align(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 25),
                            child: SizedBox(
                              width: 39 * fem,
                              height: 39 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(19.5 * fem),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/ellipse-95-bg-v3S.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
