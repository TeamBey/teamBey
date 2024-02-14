import 'package:flutter/material.dart';
import '../text_widget.dart';

class GoogleButtonWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.55,
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSecondary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(

          children: [
            Image.asset(
              "assets/images/google.jpg",
              width: 30,
              height: 30,
            ),
            SizedBox(width: 10,),
            TextWidget(
              bold: false,
              size: 14,
              color: Theme.of(context).colorScheme.primary,
              content: "Sign in with Google",
            ),
          ],
        ),
      ),
    );
  }
}

class FacebookButtonWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onBackground,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(
          "assets/images/facebook.png",
          height: 23,
          width: 20,
        )
      ),
    );
  }
}

class AppleButtonWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).primaryColor;
    return GestureDetector(
      onTap: (){},
      child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.apple_rounded,
            color: theme == Colors.white ? Colors.black54 : Colors.white,
          )
      ),
    );
  }
}


class MainButtonWidget extends StatelessWidget{
  final String content;
  final VoidCallback onPressed;

  const MainButtonWidget({
    super.key,
    required this.content,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
          padding: EdgeInsets.symmetric(
            vertical: 15,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: TextWidget(color: Colors.white,content: content,bold: false,size: 18)),
      ),
    );
  }
}