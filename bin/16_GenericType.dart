import 'Assets/16_GenericType/intsecureBox.dart';
import 'Assets/16_GenericType/securebox.dart';

//generic type menggantikan tipe data yang spesifik menjadi general
//dengan generic code menjadi lebih efisien
//cara membaca SecureBox<T> => secure box of T

void main(List<String> args) {
  //contoh spesifik type
  var s = IntSecureBox(100, '123');
  print(s.getData('123').toString());

  //contoh penggunaan generik type
  var d = SecureBox<String>('halo', '123');
  print(d.getData('123'));
}
