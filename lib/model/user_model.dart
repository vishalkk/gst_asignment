import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: "id")
  int id;

  @JsonKey(name: "name")
  String name;

  @JsonKey(name: "status")
  String firstName;

  @JsonKey(name: "address")
  String address;

  @JsonKey(name: "taxPrayerType")
  String taxPrayerType;

  @JsonKey(name: "busnessType")
  String busnessType;

  @JsonKey(name: "dateOfRegistration")
  String dateOfRegistration;

  UserModel(
    this.id,
    this.name,
    this.firstName,
    this.address,
    this.taxPrayerType,
    this.busnessType,
    this.dateOfRegistration,
  );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
