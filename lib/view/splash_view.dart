import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_login/utils/global.colors.dart';
import 'package:flutter_login/view/login_view.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors.primaryColor,
      body: const Center(
        child: Text(
          'CULO',
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
