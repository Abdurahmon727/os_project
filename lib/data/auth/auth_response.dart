import 'package:json_annotation/json_annotation.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse {
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

  AuthResponse({
    this.id,
    this.email,
    this.fullName,
    this.password,
    this.address,
    this.type,
    this.createdAt,
    this.updatedAt,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);

  @override
  String toString() {
    return 'AuthResponse(id: $id, email: $email, fullname: $fullName, password: $password, '
        'address: $address, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
