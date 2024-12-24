part of 'owner_home_bloc.dart';

@freezed
class OwnerHomeEvent with _$OwnerHomeEvent {
  const factory OwnerHomeEvent.init() = _Init;
  const factory OwnerHomeEvent.getPosts() = _GetPosts;
}
