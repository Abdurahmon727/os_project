import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:os_project/domain/repository.dart';

import '../../../../core/enums/formz_status.dart';

part 'client_home_event.dart';

part 'client_home_state.dart';

part 'client_home_bloc.freezed.dart';

class ClientHomeBloc extends Bloc<ClientHomeEvent, ClientHomeState> {
  final Repository _repo;

  ClientHomeBloc(this._repo) : super(const ClientHomeState()) {
    on<_Init>((event, emit) {
      // TODO: implement event handler
    });
  }
}
