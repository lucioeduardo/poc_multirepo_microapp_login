abstract class LoginState {
  factory LoginState.initial({required bool isFormValid}) = InitialState;
  factory LoginState.loading() = LoadingState;
}

class InitialState implements LoginState {
  final bool isFormValid;
  InitialState({required this.isFormValid});
}

class LoadingState implements LoginState {
  LoadingState();
}
