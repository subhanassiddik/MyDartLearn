import 'car.dart';
import 'interface/speed.dart';

class Kijang extends Car implements Speed {
  @override
  String nos() => 'nos speed';

  @override
  String move() {
    return 'brum.. brum..';
  }

  @override
  String horn() {
    return 'poop.. poop..';
  }
}
