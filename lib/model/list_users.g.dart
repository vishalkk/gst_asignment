// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListUsers _$ListUsersFromJson(Map<String, dynamic> json) => ListUsers(
      users: UserModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListUsersToJson(ListUsers instance) => <String, dynamic>{
      'data': instance.users,
    };
