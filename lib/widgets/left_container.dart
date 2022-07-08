import "package:flutter/material.dart";

import 'side_bar_item.dart';

class SideBar extends StatelessWidget {
  final int flexValue;

  const SideBar({Key? key, required this.flexValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flexValue,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(42, 54, 49, 8),
        ),
        child: ListView(
          children: const [
            SideBarItem(
              icon: Icons.book,
              destination: "",
            ),
          ],
        ),
      ),
    );
  }
}
