import 'package:flutter/material.dart';
import 'package:flutter_login/utils/global.colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            '- Or sign in with -',
            style: TextStyle(
                color: GlobalColors.textColor, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.2),
                            blurRadius: 10)
                      ]),
                  child: SvgPicture.asset(
                    'assets/images/google.svg',
                    height: 30,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.2),
                            blurRadius: 10)
                      ]),
                  child: SvgPicture.asset(
                    'assets/images/facebook.svg',
                    height: 30,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.2),
                            blurRadius: 10)
                      ]),
                  child: SvgPicture.asset(
                    'assets/images/twitter.svg',
                    height: 30,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
