part of 'create_post_bloc.dart';

@freezed
class CreatePostEvent with _$CreatePostEvent {
  const factory CreatePostEvent.setRealEstateType(RealEstateType realEstateType) =
      _SetRealEstateType;

  const factory CreatePostEvent.setTypeOfService(TypeOfService type) = _SetTypeOfService;

  const factory CreatePostEvent.selectSpecialBenefit(String benefit) = _SelectSpecialBenefit;

  const factory CreatePostEvent.setRegion(String region) = _SetRegion;

  const factory CreatePostEvent.uploadImage(XFile file) = _UploadImage;

  const factory CreatePostEvent.publish({
    required String title,
    required String description,
    required int area,
    required String address,
    required int numberOfRooms,
    required int floorNumber,
    required String contactDetails,
    required int price,
    required int rentPrice,
  }) = _Publish;
}
