//solid principals adalah aturan tidak baku dalam penulisan code dart, agar code mudah di maintanance

//S-ingle Responsibility Principle
//sebuah class tidak bolah menjadi super class(classnya bisa apa saja),lebih baik setiap class dibuat untuk satu tujuan tertentu.
//contoh =>

import 'dart:html';

class Car {
  AirConditioner airConditioner;
  Radio radio;
  void turnOnCar() {}

  void turnOffCar() {}
}

class AirConditioner {
  void tunrOnAirConditioner() {}
  void tunrOffAirConditioner() {}
}

class Radio {
  void playMusic() {}
}

//------------------------------------------------------------------------------

//O-pen / closed Principle
//menganjurkan kita closed u/ modifikasi dan open u/ extension
//maksudnya jika kita mempunyai sebuah class dan ingin menambah method,lebih baik membuat class baru yang extend terhadap class sebelumnya,jadi kita tidak perlu mengubah kelas yang ingin ditambah methodnya.

//------------------------------------------------------------------------------

//L-iskov Subtitution Principle
//setiap kelas turunan dari parentnya harus mempunya behavior/perilaku yang sama dengan parent nya,dengan begitu method di parentnya tidak ada yang tidak terpakai di turunannya

class Bebek {
  void makan() {}
  void berenang() {}
  void bertelur() {}
}

//contoh salah
class BebekMainan extends Bebek {
  @Override
  void makan() {
    //tidak bisa makan/method tidak digunakan
  }
}

//contoh benar
class BebekMalard extends Bebek {
  @Override
  void makan() {
    //cara makan bebek malard berbeda/method digunakan
  }
}

//------------------------------------------------------------------------------

//I-nterface Segregation Principle
//jika kita membuat sebuah interfaces dianjurkan spesifik untuk tujuan tertentu,tidak memaksakan kelas menginplementasi yang tidak dibutuhkan.dengan begitu tidak ada method yang tidak terpakai.sehingga semua method ter implementasi dan yang ter implementasi adalah method yang memang di butuhkan.

//top class
abstract class Hero {
  void regulerAttack();
}

//interface

abstract class IMagicCaster {
  void castMagic();
}

abstract class IHealer {
  void heal();
}

abstract class IStealer {
  void stealMoney();
}

//class turunan

class Thief extends Hero implements IStealer {
  @override
  void regulerAttack(){};

  @Override
  void stealMoney(){};
}

class BlackMagic extends Hero implements IMagicCaster {
  @override
  void regulerAttack(){};

  @Override
  void castMagic();
}

//------------------------------------------------------------------------------

//D-ependency Inversion Principle
//1. High level module tidak boleh bergantung pada low level module,keduanya harus bergantung pada abstact-ion.
//2. abstact-ion tidak bolah bergantung pada detil
//3. detil yang harus bergantung ke pada abstraction
//sebuah sistem terdiri dari global dan detil
//global biasanya tidak mudah berubah sedang kan detil mudah berubah   

class User {
  
}

//high level module
class UserManagement {
  final IDataStorage dataStorage;
  void saveUserData(User user,int option){
    dataStorage.saveData(user);
  }
}

//abstract class
abstract class IDataStorage {
  void saveData(User user);
}

// low level module
class FirebaseStorage implements IDataStorage {
  @override
  void saveData(User user){
    //connect to firebase
    //save data
  }
}

class LocalStorage implements IDataStorage {
  @override
  void saveData(User user){
    //connect to local storage
    //save data
  }
}

void main(List<String> args) {}
