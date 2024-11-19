import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/formz_status.dart';
import '../../../../domain/repository.dart';

part 'post_detail_event.dart';
part 'post_detail_state.dart';
part 'post_detail_bloc.freezed.dart';

class PostDetailBloc extends Bloc<PostDetailEvent, PostDetailState> {
  final Repository _repo;
  PostDetailBloc(this._repo) : super(const PostDetailState()) {
    on<_Init>((event, emit) {

    });
  }
}
