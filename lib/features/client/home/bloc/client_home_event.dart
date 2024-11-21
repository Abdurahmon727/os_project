part of 'client_home_bloc.dart';

@freezed
class ClientHomeEvent with _$ClientHomeEvent {
  const factory ClientHomeEvent.init() = _Init;

  const factory ClientHomeEvent.selectRealEstate({
     RealEstateType? type,
  }) = _SelectRealEstate;
}
