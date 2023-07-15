import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String username;
  final String email;
  final String password;

  const User(
      {required this.username, required this.email, required this.password});

  User copyWith({
    String? username,
    String? email,
    String? password,
  }) {
    return User(
        username: username ?? this.username,
        email: email ?? this.email,
        password: password ?? this.password);
  }

  @override
  List<Object?> get props => [username, email, password];
}
