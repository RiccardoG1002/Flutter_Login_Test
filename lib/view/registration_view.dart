// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_login/utils/global.colors.dart';
import 'package:flutter_login/view/splash_view.dart';
import 'package:flutter_login/widgets/button.global.dart';
import 'package:flutter_login/widgets/social.login.dart';
import 'package:flutter_login/widgets/text.form.global.dart';
import 'package:get/get.dart';

class RegistrationView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  RegistrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'CULO',
                    style: TextStyle(
                        color: GlobalColors.primaryColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Login to your account',
                  style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                TextFormGlobal(
                  controller: usernameController,
                  text: 'Username',
                  obscured: false,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 10),
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  obscured: false,
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 10),
                TextFormGlobal(
                  controller: passwordController,
                  text: 'Password',
                  obscured: true,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 10),
                ButtonGlobal(),
                const SizedBox(height: 25),
                SocialLogin()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: TextStyle(color: GlobalColors.textColor),
            ),
            InkWell(
              child: Text(
                ' Sign up',
                style: TextStyle(color: GlobalColors.primaryColor),
              ),
              onTap: () {
                Get.to(SplashView());
              },
            )
          ],
        ),
      ),
    );
  }
}
