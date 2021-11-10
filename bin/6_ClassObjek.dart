import 'dart:io';

class PersegiPanjang {
  double panjang;
  double lebar;

  double hitungLuas() {
    return panjang * lebar;
  }
}

void main(List<String> args) {
  PersegiPanjang kotak1, kotak2;
  double luaskotak2;

  kotak1 = new PersegiPanjang();
  kotak1.panjang = 4;
  kotak1.lebar = 5;

  kotak2 = PersegiPanjang();
  kotak2.panjang = double.tryParse(stdin.readLineSync());
  kotak2.lebar = double.tryParse(stdin.readLineSync());

  luaskotak2 = kotak2.hitungLuas();

  print(kotak1.hitungLuas() + luaskotak2);
}
