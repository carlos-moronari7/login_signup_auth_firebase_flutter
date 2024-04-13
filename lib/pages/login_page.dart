import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter_signup_auth_firebase_crud/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children:  [
              const SizedBox(
                height: 50,
              ),
              //logo
              const Icon(
                Icons.lock,
              size:100,),

              const SizedBox(
                height: 50,
              ),
              Text(
                "Welcome back! You\'ve been missed!",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
                ),
              ),
               const SizedBox(
                height: 25,
              ),
             MyTextField(
              controller: usernameController,
              hintText: "Username",
              obscureText: false,),

            const SizedBox(
                height: 25,
              ),
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,),

              
            ],
          ),
        ),
      ),
    );
  }
}
