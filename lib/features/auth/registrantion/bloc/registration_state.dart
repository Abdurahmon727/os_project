part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default('') String message,
  }) = _RegistrationState;
}
