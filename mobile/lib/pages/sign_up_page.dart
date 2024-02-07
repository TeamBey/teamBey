import 'package:flutter/material.dart';

import '../components/sign_in_up_components/buttons.dart';
import '../components/sign_in_up_components/welcome_widget.dart';
import '../components/text_field_widget.dart';
import '../components/text_widget.dart';


class MySignUpPage extends StatefulWidget {
  const MySignUpPage({super.key});

  @override
  _MySignUpPageState createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  welcomeWidget(context,"up"),
                  Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.04),
                    child: const TextWidget(
                      content: "Sign up",
                      color: Colors.black,
                      size: 50,
                      bold: true,
                    ),
                  ),
                  TextWidget(
                    content: "Enter your username or email address",
                    color: Colors.black,
                    size: 15,
                    bold: false,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.02, bottom: screenHeight * 0.03),
                    child: const TextFieldWidget(hint: "Username or email address"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidget(
                            content: "User name",
                            color: Colors.black,
                            size: 15,
                            bold: false,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: screenHeight * 0.01, bottom: screenHeight * 0.03),
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: const TextFieldWidget(hint: "User name"),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidget(
                            content: "Contact Number",
                            color: Colors.black,
                            size: 15,
                            bold: false,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: screenHeight * 0.01, bottom: screenHeight * 0.03),
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: const TextFieldWidget(hint: "Contact Number"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const TextWidget(
                    content: "Enter your Password",
                    color: Colors.black,
                    size: 15,
                    bold: false,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.02, bottom: screenHeight * 0.05),
                    child: const TextFieldWidget(hint: "Password"),
                  ),

                  const MainButtonWidget(content: "Sign up",),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}