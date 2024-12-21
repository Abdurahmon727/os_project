part of 'owner_home_bloc.dart';

@freezed
class OwnerHomeState with _$OwnerHomeState {
  const factory OwnerHomeState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default('') String message,
}) = _OwnerHomeState;
}
