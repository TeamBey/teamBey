import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  final String content;
  final double size;
  final Color color;
  final bool bold;

  const TextWidget({
    super.key,
    required this.content,
    required this.size,
    required this.color,
    required this.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
