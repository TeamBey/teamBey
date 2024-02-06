import 'package:flutter/material.dart';

import '../components/sign_in_up_components/buttons.dart';
import '../components/sign_in_up_components/welcome_widget.dart';
import '../components/text_field_widget.dart';
import '../components/text_widget.dart';

class MySignInPage extends StatefulWidget {
  @override
  _MySignInPageState createState() => _MySignInPageState();
}

class _MySignInPageState extends State<MySignInPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
        child: Center(
          child: Container(
            width: screenWidth * 0.9,
            height: screenHeight * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40)
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                welcomeWidget(context,"in"),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.04),
                    child: const TextWidget(
                      content: "Sign in",
                      color: Colors.black,
                      size: 50,
                      bold: true,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: screenHeight * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GoogleButtonWidget(),
                      const Fac_APPButtonWidget(image: "assets/images/facebook.png"),
                      const Fac_APPButtonWidget(image: "assets/images/apple.png"),
                    ],
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: TextWidget(
                    content: "Enter your username or email address",
                    color: Colors.black,
                    size: 15,
                    bold: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.02, bottom: screenHeight * 0.03),
                  child: const TextFieldWidget(hint: "Username or email address"),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: TextWidget(
                    content: "Enter your Password",
                    color: Colors.black,
                    size: 15,
                    bold: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.02,),
                  child: const TextFieldWidget(hint: "Password"),
                ),
                Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.05),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: (){},
                      child: TextWidget(
                        content: "Forgot Password",
                        color: Theme.of(context).colorScheme.primary,
                        size: 14,
                        bold: false,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
                  child: const MainButtonWidget(content:"Sign in"),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}