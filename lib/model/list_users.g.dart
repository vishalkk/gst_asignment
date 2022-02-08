// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListUsers _$ListUsersFromJson(Map<String, dynamic> json) => ListUsers(
      users: (json['data'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListUsersToJson(ListUsers instance) => <String, dynamic>{
      'data': instance.users,
    };
