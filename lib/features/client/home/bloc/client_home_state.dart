part of 'client_home_bloc.dart';

@freezed
class ClientHomeState with _$ClientHomeState {
  const factory ClientHomeState({
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _ClientHomeState;
}
