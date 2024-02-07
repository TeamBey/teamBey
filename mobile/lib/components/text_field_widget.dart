import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget{
  final String hint;
  final TextEditingController controller;

  const TextFieldWidget({
    super.key,
    required this.hint,
    required this.controller,
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
      controller: controller,
    );
  }
}

class PasswordTextFieldWidget extends StatefulWidget {
  final String hint;
  final TextEditingController controller;

  PasswordTextFieldWidget({
    Key? key,
    required this.hint,
    required this.controller,
  }) : super(key: key);

  @override
  _PasswordTextFieldWidgetState createState() => _PasswordTextFieldWidgetState();
}

class _PasswordTextFieldWidgetState extends State<PasswordTextFieldWidget> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme.secondary == Colors.white;
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
          hintText: widget.hint,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            color: theme ? Colors.black54 : Colors.white60,
            onPressed: (){
              setState((){
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
          )
      ),
      obscureText: !_isPasswordVisible,
      controller: widget.controller,
    );
  }
}