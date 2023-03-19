import 'package:flutter/material.dart';

class DrawreItem extends StatelessWidget {
  const DrawreItem({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(width: 20),
          Text(
            text,
            style: TextStyle(
              fontSize: 15,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
