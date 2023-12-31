import 'package:flutter/material.dart';

class MyCustWidget extends StatelessWidget {
  TextEditingController? mController;

  MyCustWidget({required this.mController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: mController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(21),
      )),
    );
  }
}
