// ignore_for_file: prefer_const_constructors

import 'package:equatable/equatable.dart';

enum RegistrationStatus {
  initial,
  submitting,
  success,
  error,
}

class RegistrationState extends Equatable {
  final String username;
  final String email;
  final String password;
  final RegistrationStatus status;

  const RegistrationState(
      {required this.username,
      required this.email,
      required this.password,
      required this.status});

  bool get isFormValid =>
      username.isNotEmpty && email.isNotEmpty && password.isNotEmpty;

  factory RegistrationState.initial() {
    return RegistrationState(
        username: '',
        email: '',
        password: '',
        status: RegistrationStatus.initial);
  }

  @override
  List<Object?> get props => [email, password, status];

  @override
  bool get stringify => true;

  RegistrationState copyWith({
    String? username,
    String? email,
    String? password,
    RegistrationStatus? status,
  }) {
    return RegistrationState(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }
}
