import 'package:gst_in/model/user_model.dart';
import 'package:json_annotation/json_annotation.dart';



part 'list_users.g.dart';

@JsonSerializable()
class ListUsers {
 
  @JsonKey(name: "data")
  List<UserModel> users;

  ListUsers({
  
    required this.users,
  });

  factory ListUsers.fromJson(Map<String, dynamic> json) =>
      _$ListUsersFromJson(json);

  Map<String, dynamic> toJson() => _$ListUsersToJson(this);
}
