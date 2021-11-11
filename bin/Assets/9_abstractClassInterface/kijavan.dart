import 'kijang.dart';
import 'interface/speed.dart';
import 'interface/wheels.dart';

class KijaVan extends Kijang implements Speed, Wheel {
  @override
  String nos() => 'metal speed';

  @override
  String desert() => 'desert wheel';
}
