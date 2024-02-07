import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget{
  final String hint;

  const TextFieldWidget({
    super.key,
    required this.hint
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
            style: BorderStyle.solid
          ),

        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              style: BorderStyle.solid,
              width: 2,
            )
        ),

        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.grey,
        )
      ),
    );
  }
}