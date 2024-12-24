import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:os_project/core/enums/formz_status.dart';
import 'package:os_project/core/enums/profile_type.dart';

import '../../../../data/auth/profile_model.dart';
import '../../../../domain/repository.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final Repository _repo;

  LoginBloc(this._repo) : super(const LoginState()) {
    on<_Login>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.loading));

      /// api call
      final result = await _repo.login(
        email: event.email,
        password: event.password,
        profileType: event.profileType,
      );

      /// failed
      if (result.isLeft) {
        emit(
          state.copyWith(
            status: FormzStatus.failure,
            message: result.left.message,
          ),
        );
        emit(state.copyWith(status: FormzStatus.pure));
        return;
      }

      /// success
      emit(
        state.copyWith(
          status: FormzStatus.success,
          profile: result.right,
        ),
      );
    });
  }
}
