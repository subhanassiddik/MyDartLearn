import 'Assets/7_Encapsulation/PersegiPanjang.dart';

void main(List<String> args) {
  PersegiPanjang kotak1;

  kotak1 = PersegiPanjang();
  kotak1.panjang = -1;
  kotak1.lebar = 4;

  print(kotak1.luas);
}
