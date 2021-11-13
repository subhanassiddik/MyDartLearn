import 'dart:developer';

import 'user.dart';

//class biasa
// class Services {
//   Future<User> getUserData() async {
//     return User();
//   }
// }

//class singleton
class Services {
  static final Services _instance = Services._internal();
  Services._internal();
  //factory => method yang dapat mengembalikan objek yang bertipe singleton,objek baru atau objek yang baru dibuat.
  factory Services() {
    return _instance;
  }

  Future<User> getUserData() async {
    return User();
  }
}
