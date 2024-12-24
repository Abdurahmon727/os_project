import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "real_estate_type")
  final String? realEstateType;
  @JsonKey(name: "service_type")
  final String? serviceType;
  @JsonKey(name: "user_id")
  final String? userId;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "region")
  final String? region;
  @JsonKey(name: "address")
  final String? address;
  @JsonKey(name: "contact_details")
  final String? contactDetails;
  @JsonKey(name: "area")
  final int? area;
  @JsonKey(name: "number_of_rooms")
  final int? numberOfRooms;
  @JsonKey(name: "floor_number")
  final int? floorNumber;
  @JsonKey(name: "price")
  final int? price;
  @JsonKey(name: "rent_price")
  final int? rentPrice;
  @JsonKey(name: "special_benefits")
  final List<String>? specialBenefits;
  @JsonKey(name: "images")
  final List<String>? images;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "created_at")
  final String? createdAt;
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  PostModel({
    this.id,
    this.realEstateType,
    this.serviceType,
    this.userId,
    this.title,
    this.description,
    this.region,
    this.address,
    this.contactDetails,
    this.area,
    this.numberOfRooms,
    this.floorNumber,
    this.price,
    this.rentPrice,
    this.specialBenefits,
    this.images,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
