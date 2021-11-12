class Person {
  String name;

  Person({String name = 'no name'}) {
    this.name = name;
  }
}

class Student extends Person {
  Student({String studentBaru = 'student baru'}) : super(name: studentBaru);
}

//constructor yaitu method khusus yang pertama kali dijalankan ketika kita membuat objek dari sebuah class

void main(List<String> args) {
  Person p = Student();
  print(p.name);
}
