import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:os_project/core/enums/formz_status.dart';

import '../../../../core/enums/real_estate_type.dart';
import '../../../../core/enums/type_of_service.dart';
import '../../../../domain/repository.dart';

part 'create_post_event.dart';

part 'create_post_state.dart';

part 'create_post_bloc.freezed.dart';

class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {
  final Repository _repo;

  CreatePostBloc(this._repo) : super(const CreatePostState()) {
    ///
    on<_SetRealEstateType>(
        (event, emit) => emit(state.copyWith(realEstateType: event.realEstateType)));

    ///
    on<_SetTypeOfService>((event, emit) => emit(state.copyWith(typeOfService: event.type)));

    ///
    on<_SelectSpecialBenefit>((event, emit) {
      final List<String> newBenefit = List.from(state.specialBenefits);

      if (newBenefit.contains(event.benefit)) {
        newBenefit.remove(event.benefit);
      } else {
        newBenefit.add(event.benefit);
      }

      emit(state.copyWith(specialBenefits: newBenefit));
    });

    ///
    on<_Publish>((event, emit) async {
      emit(state.copyWith(status: FormzStatus.loading));
      final result = await _repo.createPost();
      result.fold((left) {
        emit(state.copyWith(status: FormzStatus.failure, message: left.message));
      }, (right) {
        emit(state.copyWith(status: FormzStatus.success));
      });
      emit(state.copyWith(status: FormzStatus.pure));
    });
  }
}
