// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/cubits/login/registration_cubit.dart';
import 'package:flutter_login/cubits/login/registration_state.dart';
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
    return BlocBuilder<RegistrationCubit, RegistrationState>(
      builder: (context, state) {
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
                      onChange: (value) {
                        context
                            .read<RegistrationCubit>()
                            .usernameChanged(value);
                        print(value);
                      },
                      controller: usernameController,
                      text: 'Username',
                      obscured: false,
                      textInputType: TextInputType.text,
                    ),
                    const SizedBox(height: 10),
                    TextFormGlobal(
                      onChange: (value) {
                        context.read<RegistrationCubit>().emailChanged(value);
                        print(value);
                      },
                      controller: emailController,
                      text: 'Email',
                      obscured: false,
                      textInputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 10),
                    TextFormGlobal(
                      onChange: (value) {
                        context
                            .read<RegistrationCubit>()
                            .passwordChanged(value);
                        print(value);
                      },
                      controller: passwordController,
                      text: 'Password',
                      obscured: true,
                      textInputType: TextInputType.text,
                    ),
                    const SizedBox(height: 10),
                    ButtonGlobal(
                      onPressed: () {
                        context.read<RegistrationCubit>().registerUser();
                        print("state");
                      },
                    ),
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
      },
    );
  }
}
