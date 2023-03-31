import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class pay extends StatefulWidget {
  const pay({super.key});

  @override
  State<pay> createState() => _payState();
}

class _payState extends State<pay> {
  @override
  Widget build(BuildContext context) {
    return SlideAction(
      outerColor: Colors.black,
      text: 'Slide To Pay',
      onSubmit: () {},
    );
  }
}
