import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:post_app/app/models/user_data.dart';

class UserQueries {
  UserQueries._();

  static createUser(UserData data) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    users.doc(data.userID).set(data.toMap());
  }

  static Stream<UserData> fetchUserData() {
    User? currentUser = FirebaseAuth.instance.currentUser;
    print("Printed user uid : ${currentUser!.uid}");
    return FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser.uid)
        .snapshots()
        .map((event) => UserData.fromDocument(event));
    // userData.bindStream(currentUserData);
  }
}
