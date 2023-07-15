import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/cubits/login/registration_state.dart';
import 'package:flutter_login/models/model.dart';
import 'package:flutter_login/repositories/user_repository.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  final UserRepository userRepository = UserRepository();

  RegistrationCubit() : super(RegistrationState.initial());

  void usernameChanged(String value) {
    emit(state.copyWith(username: value, status: RegistrationStatus.initial));
  }

  void emailChanged(String value) {
    emit(state.copyWith(email: value, status: RegistrationStatus.initial));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: value, status: RegistrationStatus.initial));
  }

  Future<String?> registerUser(User user) async {
    String? token;
    if (state.status == RegistrationStatus.submitting) return null;
    emit(state.copyWith(status: RegistrationStatus.submitting));
    try {
      token = await userRepository.registerUser(user);
    } catch (_) {}
    emit(state.copyWith(status: RegistrationStatus.success));
    return token;
  }
}
