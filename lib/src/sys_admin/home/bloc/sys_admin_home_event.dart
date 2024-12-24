part of 'sys_admin_home_bloc.dart';

@freezed
class SysAdminHomeEvent with _$SysAdminHomeEvent {
  const factory SysAdminHomeEvent.init() = _Init;
  const factory SysAdminHomeEvent.load() = _Load;
}
