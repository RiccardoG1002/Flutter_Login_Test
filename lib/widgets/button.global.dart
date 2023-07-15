// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_login/utils/global.colors.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Login');
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          color: GlobalColors.primaryColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.white.withOpacity(0.2), blurRadius: 10)
          ],
        ),
        child: const Text('Sign in',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2)),
      ),
    );
  }
}
