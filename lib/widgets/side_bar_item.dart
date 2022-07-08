import "package:flutter/material.dart";

class SideBarItem extends StatelessWidget {
  final IconData icon;
  final String destination;

  const SideBarItem({
    Key? key,
    required this.icon,
    required this.destination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(42, 54, 49, 8))),
      child: IconButton(
        iconSize: 40,
        onPressed: () {
          Navigator.of(context).pushNamed(destination);
        },
        icon: Icon(icon),
      ),
    );
  }
}
