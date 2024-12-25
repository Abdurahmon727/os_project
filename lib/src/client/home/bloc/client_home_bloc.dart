import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:os_project/core/enums/real_estate_type.dart';
import 'package:os_project/data/posts/post_model.dart';
import 'package:os_project/domain/repository.dart';

import '../../../../core/enums/formz_status.dart';

part 'client_home_event.dart';

part 'client_home_state.dart';

part 'client_home_bloc.freezed.dart';

class ClientHomeBloc extends Bloc<ClientHomeEvent, ClientHomeState> {
  final Repository _repo;

  late final Timer _timer;

  ClientHomeBloc(this._repo) : super(const ClientHomeState()) {
    _timer = Timer.periodic(
      const Duration(seconds: 3),
      (_) => add(const _Load()),
    );

    on<_Init>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.loading));

      final result = await _repo.getClientPosts(
        realEstateType: null,
        region: null,
      );

      /// failed
      if (result.isLeft) {
        emit(state.copyWith(status: FormzStatus.failure, message: result.left.message));
        return;
      }

      /// success
      emit(state.copyWith(
        status: FormzStatus.success,
        posts: result.right,
      ));
    });

    on<_SelectRealEstate>(
      (event, emit) {
        if (state.selectedRealEstate == event.type) {
          emit(state.copyWith(selectedRealEstate: null));
          return;
        }

        emit(state.copyWith(selectedRealEstate: event.type));
        add(const _Load());
      },
    );

    on<_SelectRegion>((event, emit) {
      if (state.selectedRegion == event.region) {
        emit(state.copyWith(selectedRegion: null));
        return;
      }
      emit(state.copyWith(selectedRegion: event.region));
      add(const _Load());
    });

    on<_Load>((event, emit) async {
      final result = await _repo.getClientPosts(
        realEstateType: state.selectedRealEstate,
        region: state.selectedRegion,
      );

      /// failed
      if (result.isLeft) {
        return;
      }

      /// success
      emit(state.copyWith(
        status: FormzStatus.success,
        posts: result.right,
      ));
    });
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}
