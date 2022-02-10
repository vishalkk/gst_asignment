import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

//UserModel apiModelFromJson(String str) => UserModel.fromJson(json.decode(str));


@JsonSerializable()
class UserModel {
  @JsonKey(name: "id")
  int id;

  @JsonKey(name: "name")
  String name;

  @JsonKey(name: "status")
  String status;

  @JsonKey(name: "address")
  String address;

  @JsonKey(name: "taxPrayerType")
  String taxPrayerType;

  @JsonKey(name: "busnessType")
  String businessType;

  @JsonKey(name: "dateOfRegistration")
  String dateOfRegistration;



  UserModel(
    this.id,
    this.name,
  
    this.address,
    this.taxPrayerType,
    this.businessType,
    this.dateOfRegistration,
    this.status,
  );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
