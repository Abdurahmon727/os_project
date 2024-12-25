import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
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

    on<_SetRegion>((event, emit) => emit(state.copyWith(region: event.region)));

    ///
    on<_UploadImage>((event, emit) async {
      emit(state.copyWith(imageStatus: FormzStatus.loading));
      final result = await _repo.uploadImage(file: event.file);

      if (result.isLeft) {
        emit(state.copyWith(imageStatus: FormzStatus.failure, message: result.left.message));
        return;
      }

      final imageUrl = result.right;

      emit(state.copyWith(
        imageStatus: FormzStatus.success,
        images: [...state.images, imageUrl],
      ));
    });

    ///
    on<_Publish>((event, emit) async {
      if (state.realEstateType == null) {
        emit(state.copyWith(status: FormzStatus.failure, message: 'Please select house type'));
        return;
      }

      if (state.typeOfService == null) {
        emit(state.copyWith(status: FormzStatus.failure, message: 'Please select service type'));
        return;
      }

      if (state.region == null) {
        emit(state.copyWith(status: FormzStatus.failure, message: 'Please select region'));
        return;
      }

      emit(state.copyWith(status: FormzStatus.loading));
      final result = await _repo.createPost(
        realEstateType: state.realEstateType?.name ?? "",
        serviceType: state.typeOfService?.name ?? "",
        title: event.title,
        description: event.description,
        area: event.area,
        region: state.region ?? '',
        address: event.address,
        numberOfRooms: event.numberOfRooms,
        floorNumber: event.floorNumber,
        contactDetails: event.contactDetails,
        images: [],

        ///
        rentPrice: event.rentPrice,
        price: event.price,
        specialBenefits: state.specialBenefits,
      );
      result.fold((left) {
        emit(state.copyWith(status: FormzStatus.failure, message: left.message));
      }, (right) {
        emit(state.copyWith(status: FormzStatus.success));
      });
      emit(state.copyWith(status: FormzStatus.pure));
    });
  }
}
