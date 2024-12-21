import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:os_project/core/enums/formz_status.dart';
import 'package:os_project/core/enums/profile_type.dart';

import '../../../../domain/repository.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final Repository _repo;

  LoginBloc(this._repo) : super(const LoginState()) {
    on<_Login>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.loading));
      // TODO: call api
      await Future.delayed(const Duration(seconds: 3));
      emit(state.copyWith(status: FormzStatus.success));
    });
  }
}
