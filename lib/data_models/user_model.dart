import 'package:equatable/equatable.dart';

// id
//             user{
//               username
//               password
//               email
//               userProfile{
//                 address
//                 fullName
//                 dateOfBirth
//                 noNik
//                 phoneNumber
//               }
//             }
//             role {
//               name
//             }

class UserModel extends Equatable {
  String username;
  DateTime password;
  String email;
  String address;
  String fullName;
  int dateOfBirth;
  String noNik;
  String phoneNumber;
  String roleName;

  UserModel({
    username,
    password,
    email,
    address,
    fullName,
    dateOfBirth,
    noNik,
    phoneNumber,
    roleName
  }) : super ([
    username,
    password,
    email,
    address,
    fullName,
    dateOfBirth,
    noNik,
    phoneNumber,
    roleName
  ]);
}