import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "fullname")
  final String? fullName;
  @JsonKey(name: "password")
  final String? password;
  @JsonKey(name: "address")
  final String? address;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "created_at")
  final String? createdAt;
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  ProfileModel({
    this.id,
    this.email,
    this.fullName,
    this.password,
    this.address,
    this.type,
    this.createdAt,
    this.updatedAt,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);

  @override
  String toString() {
    return 'ProfileModel(id: $id, email: $email, fullname: $fullName, password: $password, '
        'address: $address, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
