import 'dart:async';

class User {
  int age = 0;
}

//high level module
class UserManagement {
  final IDataStorage datastorage;

  UserManagement(this.datastorage);

  void saveUserData(User user, int option) {
    datastorage.saveData(user);
  }

  FutureOr<int> getUserAge(User user) async {
    return await datastorage.getUserAge(user);
  }
}

//abstract class
abstract class IDataStorage {
  void saveData(User user);
  FutureOr<int> getUserAge(User user);
}

// low level module
class FirebaseStorage implements IDataStorage {
  @override
  void saveData(User user) {
    //connect to firebase
    //save data
  }

  @override
  FutureOr<int> getUserAge(User user) async {
    // TODO: implement getUserAge
    await Future.delayed(Duration(seconds: 2));
    return 20;
  }
}

class LocalStorage implements IDataStorage {
  @override
  void saveData(User user) {
    //connect to local storage
    //save data
  }

  @override
  int getUserAge(User user) {
    // TODO: implement getUserAge
    //ambil tgl lahir user
    //bandingkan tanggal lahir dengan tanggal sekarang
    // lalu hitung umurnya
    return 10;
  }
}

void main(List<String> args) async {
  User user = User();
  UserManagement userManagement = UserManagement(FirebaseStorage());

  print(await userManagement.getUserAge(user));
}
