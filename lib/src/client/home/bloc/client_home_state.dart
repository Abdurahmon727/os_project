part of 'client_home_bloc.dart';

@freezed
class ClientHomeState with _$ClientHomeState {
  const factory ClientHomeState({
    /// content
    @Default(FormzStatus.pure) FormzStatus status,
    @Default([]) List<PostModel> posts,
    @Default('') String message,

    /// selections
    @Default(null) RealEstateType? selectedRealEstate,
    @Default(null) String? selectedRegion,
  }) = _ClientHomeState;
}
