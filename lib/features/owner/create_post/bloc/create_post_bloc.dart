import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:os_project/core/enums/formz_status.dart';

import '../../../../domain/repository.dart';

part 'create_post_event.dart';

part 'create_post_state.dart';

part 'create_post_bloc.freezed.dart';

class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {
  final Repository _repo;

  CreatePostBloc(this._repo) : super(const CreatePostState()) {
    on<_Init>((event, emit) {
      // TODO: implement event handler
    });
  }
}
