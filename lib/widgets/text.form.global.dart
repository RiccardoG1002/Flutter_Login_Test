// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/cubits/login/registration_cubit.dart';
import 'package:flutter_login/cubits/login/registration_state.dart';

class TextFormGlobal extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscured;
  final Function(String)? onChange;

  const TextFormGlobal(
      {super.key,
      required this.controller,
      required this.text,
      required this.textInputType,
      required this.obscured,
      this.onChange});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationCubit, RegistrationState>(
      buildWhen: ((previous, current) => previous != current),
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: Colors.blue.shade900.withOpacity(0.2), blurRadius: 10)
            ],
          ),
          child: TextFormField(
            onChanged: onChange,
            controller: controller,
            keyboardType: textInputType,
            obscureText: obscured,
            decoration: InputDecoration(
              hintText: text,
              border: InputBorder.none,
            ),
          ),
        );
      },
    );
  }
}
