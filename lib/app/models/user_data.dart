import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  UserData({
    required this.userID,
    required this.userName,
    required this.email,
    required this.password,
    required this.phoneNumber,
  });

  factory UserData.empty() {
    return UserData(
      userID: '',
      userName: '',
      email: '',
      password: '',
      phoneNumber: '',
    );
  }

  factory UserData.fromDocument(
    DocumentSnapshot<Map<String, dynamic>> document,
  ) {
    return UserData(
      userID: document['userID'],
      userName: document['userName'],
      email: document['email'],
      password: document['password'],
      phoneNumber: document['phoneNumber'],
    );
  }

  String userID;
  String userName;
  String email;
  String password;
  String phoneNumber;

  Map<String, dynamic> toMap() {
    return {
      'userID': userID,
      'userName': userName,
      'email': email,
      'password': password,
      'phoneNumber': phoneNumber,
    };
  }
}
