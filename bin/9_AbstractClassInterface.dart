import 'Assets/9_abstractClassInterface/avanza.dart';
import 'Assets/9_abstractClassInterface/car.dart';
import 'Assets/9_abstractClassInterface/kijang.dart';
import 'Assets/9_abstractClassInterface/kijavan.dart';
import 'Assets/9_abstractClassInterface/interface/speed.dart';
import 'Assets/9_abstractClassInterface/avanza.dart';

//inheritance (keyword : extend)     => membagikan behaviour kepada turunannya
//abstact class (keyword : abstract) => membagikan behaviour kepada turunannya tp hanya satu
//interface (keyword : implements)   => abstract class yang turunnanya dapat menggunakan interfacenya lebih dari satu dan memaksa turunnya mengimplementasi perilaku yang ada.
//mixin (keyword : mixin)=> hampir sama dengan interface hanya saja turunanya tidak harus melakukan perilakunya(optional)

void main(List<String> args) {
  List<Car> cars = [];

  cars.add(Avanza());
  cars.add(Kijang());
  cars.add(Avanza());
  cars.add(KijaVan());

  for (Car item in cars) {
    if (item is Speed) {
      print((item as Speed).nos());
    }
  }
}
