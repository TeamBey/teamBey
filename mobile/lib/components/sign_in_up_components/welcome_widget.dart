import 'package:flutter/material.dart';

import '../../pages/sign_in_page.dart';
import '../../pages/sign_up_page.dart';
import '../text_widget.dart';

Container welcomeWidget(BuildContext context, String page){
  return Container(
    padding: EdgeInsets.only(top: 20),
    child: (
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                content: "Welcome to",
                color: Colors.black,
                size: 20,
                bold: false,
              ),
              TextWidget(
                content: "TeamBey",
                color: Colors.black,
                size: 20,
                bold: false,
              ),
            ],
          ),
          page == "in"?
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(
                    content: "No Account ?",
                    color: Colors.grey,
                    size: 15,
                    bold: false,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MySignUpPage()));
                    },
                    child: Padding(
                      padding: EdgeInsets.zero,
                      child: TextWidget(
                        content: "Sign up",
                        color: Theme.of(context).colorScheme.primary,
                        size: 16,
                        bold: false,
                      ),
                    ),
                  )

                ],
              )
              :
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(
                    content: "Have an Account ?",
                    color: Colors.grey,
                    size: 15,
                    bold: false,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MySignInPage()));
                    },
                    child: Padding(
                      padding: EdgeInsets.zero,
                      child: TextWidget(
                        content: "Sign in",
                        color: Theme.of(context).colorScheme.primary,
                        size: 16,
                        bold: false,
                      ),
                    ),
                  )

                ],
              ),
          ],
      )
    ),
  );
}