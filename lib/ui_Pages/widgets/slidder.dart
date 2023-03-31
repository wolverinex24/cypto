import 'package:flutter/material.dart';

class Slidder extends StatefulWidget {
  const Slidder({super.key});

  @override
  State<Slidder> createState() => _SlidderState();
}

class _SlidderState extends State<Slidder> {
  double _slippage = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Slider(
            min: 0,
            max: 10,
            value: _slippage,
            divisions: 100,
            label: _slippage.toInt().toString() + "%",
            onChanged: ((double value) {
              setState(() {
                _slippage = value;
              });
            }),
          ),
        ],
      ),
    );
  }
}
