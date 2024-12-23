// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
      id: json['id'] as String?,
      email: json['email'] as String?,
      fullName: json['fullname'] as String?,
      password: json['password'] as String?,
      address: json['address'] as String?,
      type: json['type'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'fullname': instance.fullName,
      'password': instance.password,
      'address': instance.address,
      'type': instance.type,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
