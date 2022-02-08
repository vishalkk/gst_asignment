// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      json['id'] as int,
      json['name'] as String,
      json['status'] as String,
      json['address'] as String,
      json['taxPrayerType'] as String,
      json['busnessType'] as String,
      json['dateOfRegistration'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.firstName,
      'address': instance.address,
      'taxPrayerType': instance.taxPrayerType,
      'busnessType': instance.busnessType,
      'dateOfRegistration': instance.dateOfRegistration,
    };
