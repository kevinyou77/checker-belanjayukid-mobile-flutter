import 'package:equatable/equatable.dart';

class UserAuthModel extends Equatable {
  String bearerToken;
  String roleName;
  String username;

  UserAuthModel({
    bearerToken,
    roleName,
    username
  }) : super ([
    bearerToken,
    roleName,
    username
  ]);

  factory UserAuthModel.fromJson(Map<String, dynamic> data) => new UserAuthModel(
    bearerToken: data["bearerToken"],
    roleName: data["roleName"],
    username: data["username"]
  );

  Map<String, dynamic> toJson() => {
    "bearerToken": bearerToken,
    "roleName": roleName,
    "username": username
  };
}