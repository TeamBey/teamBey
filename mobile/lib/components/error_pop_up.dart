import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String content) {
  final theme = Theme.of(context).primaryColor == Colors.white;
  final snackBar = SnackBar(
    content: Text(content),
    backgroundColor: theme ? Colors.black54 : Colors.white30,
    duration: Duration(seconds: 2,)
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}