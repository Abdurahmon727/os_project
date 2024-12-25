part of 'create_post_bloc.dart';

@freezed
class CreatePostState with _$CreatePostState {
  const factory CreatePostState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default('') String message,

    /// image
    @Default(FormzStatus.pure) FormzStatus imageStatus,
    @Default(<String>[]) List<String> images,

    /// fields
    @Default(null) RealEstateType? realEstateType,
    @Default(null) TypeOfService? typeOfService,
    @Default(null) String? region,
    @Default(<String>[]) List<String> specialBenefits,
  }) = _CreatePostState;
}
