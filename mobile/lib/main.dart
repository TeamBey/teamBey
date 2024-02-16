import 'package:flutter/material.dart';
import 'package:teambey_org/presentation/app/app.dart';
import 'package:teambey_org/presentation/signupLogin/signIn.dart';
import 'package:teambey_org/presentation/signupLogin/signUp.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignUp(),
    );
  }
}
