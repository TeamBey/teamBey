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
          color: Color(0xFFFFF4E3),
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

class Fac_APPButtonWidget extends StatelessWidget {
  final String image;

  const Fac_APPButtonWidget({
    super.key,
    required this.image
  });
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
          color: Color(0xFFF2F2F2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(
          image,
          height: 20,
          width: 20,
        )
      ),
    );
  }
}


class MainButtonWidget extends StatelessWidget{
  final String content;

  const MainButtonWidget({
    super.key,
    required this.content
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
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