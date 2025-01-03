part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default('') String message,
    @Default(null) ProfileModel? profile,
  }) = _LoginState;
}
