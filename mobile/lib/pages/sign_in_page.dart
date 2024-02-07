import 'package:flutter/material.dart';

import '../components/error_pop_up.dart';
import '../components/sign_in_up_components/buttons.dart';
import '../components/sign_in_up_components/welcome_widget.dart';
import '../components/text_field_widget.dart';
import '../components/text_widget.dart';

class MySignInPage extends StatefulWidget {
  @override
  _MySignInPageState createState() => _MySignInPageState();
}

bool isStrongPassword(String password) {
  return [
    password.length >= 8,
    password.contains(RegExp(r'[A-Z]')),
    password.contains(RegExp(r'[a-z]')),
    password.contains(RegExp(r'[0-9]')),
    password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')),
  ].every((condition) => condition);
}

class _MySignInPageState extends State<MySignInPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  void _verification(BuildContext context){
    String mail = _emailController.text;
    String pass = _passController.text;

    if (mail.isEmpty){
      showSnackBar(context,"Enter username or email please ! ");
      return;
    }
    if (pass.isEmpty){
      showSnackBar(context,"Enter password please ! ");
      return;
    }
    if (!isStrongPassword(pass)){
      showSnackBar(
          context,
          "Password must have 8 Caracters at least; 1 UpperCase, 1 LowerCase, 1 Number and 1 Special Character.",
      );
    }

  }

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
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
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(40)
            ),
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  welcomeWidget(context,"in"),
                  Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.04),
                    child: Text("Sign in",style: _textTheme.displayLarge,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GoogleButtonWidget(),
                        FacebookButtonWidget(),
                        AppleButtonWidget(),
                      ],
                    ),
                  ),
                  Text(
                    "Enter your username or email address",
                    style: _textTheme.bodyMedium,
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.02, bottom: screenHeight * 0.03),
                    child: TextFieldWidget(
                      hint: "Username or email address",
                      controller: _emailController,
                    ),
                  ),
                  Text(
                    "Enter your password",
                    style: _textTheme.bodyMedium,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.02,),
                    child: TextFieldWidget(
                      hint: "Password",
                      controller: _passController,
                    ),
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
                    child: MainButtonWidget(
                      content:"Sign in",
                      onPressed: (){
                        _verification(context);
                      },
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}