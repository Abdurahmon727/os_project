part of 'create_post_bloc.dart';

@freezed
class CreatePostState with _$CreatePostState {
  const factory CreatePostState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default('') String message,
}) = _CreatePostState;
}
