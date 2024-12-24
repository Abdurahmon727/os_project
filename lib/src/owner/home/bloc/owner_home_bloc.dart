import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/formz_status.dart';
import '../../../../data/posts/post_model.dart';
import '../../../../domain/repository.dart';

part 'owner_home_event.dart';

part 'owner_home_state.dart';

part 'owner_home_bloc.freezed.dart';

class OwnerHomeBloc extends Bloc<OwnerHomeEvent, OwnerHomeState> {
  final Repository _repo;

  // late final StreamController<Either<Failure, List<PostModel>>> postsSteam;

  OwnerHomeBloc(this._repo) : super(const OwnerHomeState()) {
    // postsSteam = StreamController<Either<Failure, List<PostModel>>>();

    on<_Init>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.loading));
      final result = await _repo.getOwnerPosts();
      result.fold((left) {
        emit(state.copyWith(status: FormzStatus.failure, message: left.message));
      }, (right) {
        emit(state.copyWith(status: FormzStatus.success, posts: right));
      });
    });
  }
}
