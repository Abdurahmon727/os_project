import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/formz_status.dart';
import '../../../../domain/repository.dart';

part 'owner_home_event.dart';

part 'owner_home_state.dart';

part 'owner_home_bloc.freezed.dart';

class OwnerHomeBloc extends Bloc<OwnerHomeEvent, OwnerHomeState> {
  final Repository _repo;

  OwnerHomeBloc(this._repo) : super(const OwnerHomeState()) {
    on<_Init>((event, emit) {
      // TODO: implement event handler
    });
  }
}
