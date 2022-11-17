// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:login/login.dart';
import 'package:validation/validation.dart';

class LoginController extends ValueNotifier<LoginState> {
  final AppNavigator appNavigator;

  LoginController({
    required this.appNavigator,
  }) : super(LoginState.initial(isFormValid: false));

  final emailController = CustomTextEditingController(
    validator: ValidatorBuilder().required().email().build(),
  );
  final passwordController = CustomTextEditingController(
    validator: ValidatorBuilder().required().build(),
  );

  Future<void> login() async {
    value = LoginState.loading();

    await Future.delayed(const Duration(seconds: 2));

    appNavigator.pushReplacement(AppRoutes.homePage);
  }

  void onFormChanged() {
    if (_isFormValid) {
      value = LoginState.initial(isFormValid: true);
    } else {
      value = LoginState.initial(isFormValid: false);
    }
  }

  bool get _isFormValid =>
      emailController.isValid && passwordController.isValid;
}
