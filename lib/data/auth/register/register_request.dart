import 'package:json_annotation/json_annotation.dart';

part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "full_name")
  final String? fullName;
  @JsonKey(name: "address")
  final String? address;
  @JsonKey(name: "password")
  final String? password;

  RegisterRequest({
    this.id,
    this.email,
    this.fullName,
    this.address,
    this.password,
  });

  factory RegisterRequest.fromJson(Map<String, dynamic> json) => _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}
