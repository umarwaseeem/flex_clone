import "package:flutter/material.dart";

class UserName extends StatelessWidget {
  final String name;

  const UserName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Center(
          child: Text(
            "Hello Mr, ",
            style: TextStyle(color: Colors.yellow),
          ),
        ),
        Center(
          child: Text(name),
        ),
      ],
    );
  }
}
