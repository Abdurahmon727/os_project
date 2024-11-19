import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:os_project/core/enums/formz_status.dart';
import 'package:os_project/core/enums/profile_type.dart';

import '../../../../domain/repository.dart';

part 'registration_event.dart';

part 'registration_state.dart';

part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final Repository _repo;

  RegistrationBloc(this._repo) : super(const RegistrationState()) {
    on<_Register >((event, emit) {
      // TODO: implement event handler
    });
  }
}
