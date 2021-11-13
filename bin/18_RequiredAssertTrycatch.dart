import 'package:meta/meta.dart';

//keyword @required => memaksa field harus diisi;
//assert => keyword untuk validasi,jika error maka program akan distop.
//agar program tidak stop jika ada error dan tetap mengeksekusi program yg tidak error gunakan => try catch

void main(List<String> args) {
  try {
    Person p = Person(name: null);
  } catch (e) {
    print(e);
  }
  print('hello');
}

class Person {
  final String name;
  final int age;

  Person({@required this.name, this.age = 0}) {
    assert(name != null, 'harus mengisi name dengan string');
  }
}
