import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:os_project/core/enums/formz_status.dart';

import '../../../../domain/repository.dart';

part 'create_post_event.dart';

part 'create_post_state.dart';

part 'create_post_bloc.freezed.dart';

class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {
  final Repository _repo;

  CreatePostBloc(this._repo) : super(const CreatePostState()) {
    on<_Publish>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.loading));
      final result = await _repo.createPost();
      result.fold((left) {
        emit(state.copyWith(status: FormzStatus.failure, message: left.message));
      }, (right) {
        emit(state.copyWith(status: FormzStatus.success));
      });
      emit(state.copyWith(status: FormzStatus.pure));
    });
  }
}
