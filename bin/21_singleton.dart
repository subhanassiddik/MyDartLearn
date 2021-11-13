//singleton => design pattern dimana sebuah class hanya bisa dibuat menjadi satu objek saja

import 'Assets/21_singleton/services.dart';

void main(List<String> args) {
  Services service1 = Services();
  Services service2 = Services();

  if (service1 == service2) {
    print('sama');
  } else {
    print('beda');
  }
}
