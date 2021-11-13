void main(List<String> args) {
  //method sort =>untuk sortir data,mengembalikan nilai integer.
  //compare(build method) untuk membandingkan

  //urut berdasar umur
  // persons.sort((p1, p2) => p1.age - p2.age);
  //urut berdasar role
  // persons.sort((p1, p2) => p1.role.compareTo(p2.role));
  //urut berdasar role dan umur
  // persons.sort((p1, p2) {
  //   if (p1.role.compareTo(p2.role) != 0) {
  //     return p1.role.compareTo(p2.role);
  //   } else {
  //     return p1.age.compareTo(p2.age);
  //   }
  // });
  //urut custom
  persons.sort((p1, p2) {
    if (p1.roleWeigth - p2.roleWeigth != 0) {
      return p1.roleWeigth - p2.roleWeigth;
    } else {
      return p1.age.compareTo(p2.age);
    }
  });
  persons.forEach((e) => print(e.role + ' - ' + e.age.toString()));
}

List<Person> persons = [
  Person('administrator', 32),
  Person('user', 52),
  Person('administrator', 20),
  Person('merchant', 52),
  Person('administrator', 23),
  Person('user', 22),
  Person('merchant', 22),
  Person('user', 12),
  Person('merchant', 55),
];

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);

  int get roleWeigth {
    switch (role) {
      case 'merchant':
        return 1;
      case 'administrator':
        return 2;
        break;
      default:
        return 3;
    }
  }
}
