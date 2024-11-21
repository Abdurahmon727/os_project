import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:os_project/core/enums/real_estate_type.dart';
import 'package:os_project/domain/repository.dart';

import '../../../../core/enums/formz_status.dart';

part 'client_home_event.dart';

part 'client_home_state.dart';

part 'client_home_bloc.freezed.dart';

class ClientHomeBloc extends Bloc<ClientHomeEvent, ClientHomeState> {
  final Repository _repo;

  ClientHomeBloc(this._repo) : super(const ClientHomeState()) {
    on<_Init>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.loading));

      await Future.delayed(const Duration(seconds: 3));
      //todo:
      emit(state.copyWith(
        status: FormzStatus.success,
        posts: ['post1', 'post2'],
      ));
    });

    on<_SelectRealEstate>(
      (event, emit) {
        if (state.selectedRealEstate == event.type) {
          emit(state.copyWith(selectedRealEstate: null));
          return;
        }

        emit(state.copyWith(selectedRealEstate: event.type));
      },
    );
  }
}
