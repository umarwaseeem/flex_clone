import 'package:flutter/material.dart';

class RightScreen extends StatelessWidget {
  final int flexValue;

  const RightScreen({Key? key, required this.flexValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flexValue,
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}
