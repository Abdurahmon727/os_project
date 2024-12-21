part of 'check_post_bloc.dart';

@freezed
class CheckPostState with _$CheckPostState {
  const factory CheckPostState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default('') String message,
}) = _CheckPostState;
}
