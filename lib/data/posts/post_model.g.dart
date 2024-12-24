// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostModel _$PostModelFromJson(Map<String, dynamic> json) => PostModel(
      id: json['id'] as String?,
      realEstateType: json['real_estate_type'] as String?,
      serviceType: json['service_type'] as String?,
      userId: json['user_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      region: json['region'] as String?,
      address: json['address'] as String?,
      contactDetails: json['contact_details'] as String?,
      area: (json['area'] as num?)?.toInt(),
      numberOfRooms: (json['number_of_rooms'] as num?)?.toInt(),
      floorNumber: (json['floor_number'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      rentPrice: (json['rent_price'] as num?)?.toInt(),
      specialBenefits: (json['special_benefits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$PostModelToJson(PostModel instance) => <String, dynamic>{
      'id': instance.id,
      'real_estate_type': instance.realEstateType,
      'service_type': instance.serviceType,
      'user_id': instance.userId,
      'title': instance.title,
      'description': instance.description,
      'region': instance.region,
      'address': instance.address,
      'contact_details': instance.contactDetails,
      'area': instance.area,
      'number_of_rooms': instance.numberOfRooms,
      'floor_number': instance.floorNumber,
      'price': instance.price,
      'rent_price': instance.rentPrice,
      'special_benefits': instance.specialBenefits,
      'images': instance.images,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
