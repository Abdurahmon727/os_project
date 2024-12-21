import 'package:bloc/bloc.dart';
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
    on<_Register>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.loading));

      final result = await _repo.register(
        id: event.id,
        fullName: event.fullName,
        email: event.email,
        address: event.address,
        password: event.password,
        profileType: event.profileType,
      );

      /// failed
      // if (result.isLeft) {
      //   emit(state.copyWith(status: FormzStatus.failure, message: result.left.message));
      //   return;
      // }

      /// success
      emit(state.copyWith(status: FormzStatus.success));
    });
  }
}
