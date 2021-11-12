class Person {
  String name;
  Function(String name) doingHobby;

  Person(this.name, {this.doingHobby});

  void takeARest() {
    if (doingHobby != null) {
      doingHobby(name);
    }
  }
}

// void momsHobby(String name) {
//   print(name + 'pergi kesawah');
// }

void main(List<String> args) {
  // Person p = Person('moms ', doingHobby: momsHobby);
  // Person p = Person('moms ',
  //     doingHobby: (String name) => print(name + 'pergi kesawah'));
  Person p = Person('moms ', doingHobby: (_) => print('pergi kesawah'));

  p.takeARest();
}
