// // To parse this JSON data, do
// //
// //     final ListUsers = ListUsersFromJson(jsonString);

// import 'dart:convert';

// import 'package:gst_in/model/list_users.dart';
// import 'package:gst_in/model/user_model.dart';

// ListUsers ListUsersFromJson(String str) => ListUsers.fromJson(json.decode(str));

// String ListUsersToJson(ListUsers data) => json.encode(data.toJson());

// class ListUsers {
//     ListUsers({
//         required this.data,
//     });

//     List<UserModel> data;

//     factory ListUsers.fromJson(Map<String, dynamic> json) => ListUsers(
//         data: List<UserModel>.from(json["data"].map((x) => UserModel.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//     };
// }

// class UserModel {
//     UserModel({
//       required  this.id,
//         required this.name,
//       required  this.status,
//       required  this.address,
//        required this.taxPrayerType,
//        required this.busnessType,
//       required  this.dateOfRegistration,
//     });

//     int id;
//     String name;
//     String status;
//     String address;
//     String taxPrayerType;
//     String busnessType;
//     String dateOfRegistration;

//     factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
//         id: json["id"] ?? "",
//         name: json["name"] ?? "",
//         status: json["Status"] ?? "",
//         address: json["Address"] ?? "",
//         taxPrayerType: json["TaxPrayer type"] ?? "",
//         busnessType: json["Busness Type"] ?? "",
//         dateOfRegistration: json["Date of Registration"] ?? "",
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "Status": status,
//         "Address": address,
//         "TaxPrayer type": taxPrayerType,
//         "Busness Type": busnessType,
//         "Date of Registration": dateOfRegistration,
//     };
// }
