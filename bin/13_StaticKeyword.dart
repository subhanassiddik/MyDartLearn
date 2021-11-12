class Person {
  String name;
  int age;
  static int maxAge = 150;

  Person(this.name, int age) {
    this.age = (age > maxAge) ? maxAge : age;
  }
}

//Dengan static keyword,objek dari class tidak dapat menggunakan field atau method yang telah di beri keyword static.
//Sehingga penggunaan memori menjadi lebih sedikit.

void main(List<String> args) {
  Person p = Person('sidik', 170);
  print(Person.maxAge);
}
