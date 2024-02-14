import 'package:flutter/material.dart';
import '../components/error_pop_up.dart';

class ForumVerif{
  bool isNumberValid(String password) {
    return RegExp(r'^\d{8}$').hasMatch(password);
  }
  bool isStrongPassword(String password) {
    return [
      password.length >= 8,
      password.contains(RegExp(r'[A-Z]')),
      password.contains(RegExp(r'[a-z]')),
      password.contains(RegExp(r'[0-9]')),
      password.contains(RegExp(r'[!@#$%^&*(),.?":/{}|<>]')),
    ].every((condition) => condition);
  }

  void verificationSignUp(BuildContext context, String email, String password, String username, String num){
    if (email.isEmpty){
      showSnackBar(context,"Enter email please ! ");
      return;
    }
    if (username.isEmpty){
      showSnackBar(context,"Enter username please ! ");
      return;
    }
    if (num.isEmpty){
      showSnackBar(context,"Enter number please ! ");
      return;
    }
    if (!isNumberValid(num)){
      showSnackBar(
        context,
        "Contact Number must have 8 numbers",
      );
    }
    if (password.isEmpty){
      showSnackBar(context,"Enter password please ! ");
      return;
    }

    if (!isStrongPassword(password)){
      showSnackBar(
        context,
        "Password must have 8 Caracters at least; 1 UpperCase, 1 LowerCase, 1 Number and 1 Special Character.",
      );
      return;
    }

  }

  void verificationSignIn(BuildContext context, String email, String password){
    if (email.isEmpty){
      showSnackBar(context,"Enter username or email please ! ");
      return;
    }
    if (password.isEmpty){
      showSnackBar(context,"Enter password please ! ");
      return;
    }
    if (!isStrongPassword(password)){
      showSnackBar(
        context,
        "Password must have 8 Caracters at least; 1 UpperCase, 1 LowerCase, 1 Number and 1 Special Character.",
      );
      return;
    }

  }
}