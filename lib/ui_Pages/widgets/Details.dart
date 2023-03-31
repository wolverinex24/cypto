import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rate',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              Text(
                '1 AVAX = 1.16 OKB',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Slippage tolerance',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              Text(
                '1.29%',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Estimated Fees',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              Text(
                '0.076 ETH',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
