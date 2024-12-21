import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/formz_status.dart';
import '../../../../domain/repository.dart';

part 'sys_admin_home_event.dart';

part 'sys_admin_home_state.dart';

part 'sys_admin_home_bloc.freezed.dart';

class SysAdminHomeBloc extends Bloc<SysAdminHomeEvent, SysAdminHomeState> {
  final Repository _repo;

  SysAdminHomeBloc(this._repo) : super(const SysAdminHomeState()) {
    on<_Init>((event, emit) {
      // TODO: implement event handler
    });
  }
}
