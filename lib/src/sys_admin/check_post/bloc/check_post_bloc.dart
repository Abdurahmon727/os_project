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
    on<_Init>((event, emit) {
      // TODO: implement event handler
    });
  }
}
