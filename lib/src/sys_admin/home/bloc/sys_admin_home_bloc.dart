import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/formz_status.dart';
import '../../../../data/posts/post_model.dart';
import '../../../../domain/repository.dart';

part 'sys_admin_home_event.dart';

part 'sys_admin_home_state.dart';

part 'sys_admin_home_bloc.freezed.dart';

class SysAdminHomeBloc extends Bloc<SysAdminHomeEvent, SysAdminHomeState> {
  final Repository _repo;

  SysAdminHomeBloc(this._repo) : super(const SysAdminHomeState()) {
    on<_Init>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.loading));
      final result = await _repo.getSysAdminPosts();

      /// failed
      if (result.isLeft) {
        emit(state.copyWith(status: FormzStatus.failure, message: result.left.message));
        return;
      }

      /// success
      emit(state.copyWith(status: FormzStatus.success, posts: result.right));
    });

    on<_Load>((event, emit) async {
      final result = await _repo.getSysAdminPosts();

      /// failed
      if (result.isLeft) {
        return;
      }

      /// success
      emit(state.copyWith(status: FormzStatus.success, posts: result.right));
    });
  }
}
