part of 'post_detail_bloc.dart';

@freezed
class PostDetailState with _$PostDetailState {
  const factory PostDetailState({
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _PostDetailState;
}
