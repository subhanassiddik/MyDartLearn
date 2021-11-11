import 'Assets/8_Inheritance/hero.dart';
import 'Assets/8_Inheritance/monster.dart';
import 'Assets/8_Inheritance/monster_kecoa.dart';
import 'Assets/8_Inheritance/mosnter_ubur_ubur.dart';

void main(List<String> args) {
  Hero h = Hero();
  Monster monster = MonsterUburUbur();
  MonsterUburUbur u = MonsterUburUbur();

  List<Monster> monsters = [];

  monsters.add(MonsterUburUbur());
  monsters.add(MonsterKecoa());
  monsters.add(MonsterUburUbur());

  //as digunakan untuk meyakinkan identifair monster adalah objek dari mosnterUburUbur

  print((monster as MonsterUburUbur).swim());

  //is digunakan untuk validasi dengan penulisan yg lebih singkat

  for (var item in monsters) {
    if (item is MonsterUburUbur) {
      print(item.eatHuman());
    }
  }

  // h.healtPoint = 5;
  // m.healtPoint = 7;
  // u.healtPoint = 8;

  // print('health point = ' + h.healtPoint.toString());
  // print('health point = ' + u.healtPoint.toString());
  // print(h.killAMonster());
  // print(u.swim());
  // print(m.healtPoint);
  // print(m.eatHuman());
}
