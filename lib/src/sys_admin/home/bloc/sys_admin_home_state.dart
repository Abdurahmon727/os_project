part of 'sys_admin_home_bloc.dart';

@freezed
class SysAdminHomeState with _$SysAdminHomeState {
  const factory SysAdminHomeState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default('') String message,
    @Default([]) List<PostModel> posts,
}) = _SysAdminHomeState;
}
