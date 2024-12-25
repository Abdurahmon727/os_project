import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/formz_status.dart';
import '../../../../domain/repository.dart';

part 'check_post_event.dart';

part 'check_post_state.dart';

part 'check_post_bloc.freezed.dart';

class CheckPostBloc extends Bloc<CheckPostEvent, CheckPostState> {
  final Repository _repo;

  CheckPostBloc(this._repo) : super(const CheckPostState()) {
    on<_Accept>((event, emit) async {
      final result = await _repo.changePostStatus(postId: event.id, status: 'accepted');
      result.fold((left) {
        emit(state.copyWith(status: FormzStatus.failure, message: left.message));
      }, (right) {
        emit(state.copyWith(status: FormzStatus.success, message: 'Post accepted successfully'));
      });
    });

    on<_Reject>((event, emit) async {
      final result = await _repo.changePostStatus(postId: event.id, status: 'rejected');
      result.fold((left) {
        emit(state.copyWith(status: FormzStatus.failure, message: left.message));
      }, (right) {
        emit(state.copyWith(status: FormzStatus.success, message: 'Post rejected successfully'));
      });
    });
  }
}
