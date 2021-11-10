import 'dart:io';

//jika ingin menentukan nilai kembalian tertentu dari fungsi,tulisakan nilai kembaliannya didepan nama fungsinya.
double luas_segiempat(double panjang, double lebar) {
  return panjang * lebar;
}

//jika tidak mengembalikan nilai gunakan tipe void
void sapa_penonton() {
  print("halo penonton");
}

//optional parameter
//-----------------------------------------
//named parameter
String namedParameter({String say, String some}) {
  return say + ' ' + some;
}

//positional parameter
String positionalParameter(String say, String some, [String city]) {
  return say + some + city;
}

//default parameter values
String defaultParameter(String say, String some, [String city = 'sinjai']) {
  return say + some + city;
}

//lamda expression
int luas_persegi(int sisi) => sisi * sisi;

//anonnymous function => funggsi yang tidak memiliki nama
int mathOperator(int number1, int number2, Function(int, int) operator) {
  return operator(number1, number2);
}

void main(List<String> args) {
  // double p, l, luas;

  // p = double.tryParse(stdin.readLineSync());
  // l = double.tryParse(stdin.readLineSync());

  // print(luas_segiempat(p, l));

  // sapa_penonton();

  //-------------------------------------------------

  //optional parameter
  print(namedParameter(say: 'hallo', some: 'world'));
  print(positionalParameter('hello', 'lucky', 'makassar'));
  print(defaultParameter('hello', 'lucky'));

  // -------------------------------------------------

  //lamda expression
  // print(luas_persegi(3));

  //menyimpan function di dalam sebuah variabel
  Function f = luas_persegi;
  print(f(3));

  //memasukkan fuction sebagai parameter
  //menjadikan function sebagai nilai kembalian
  print(mathOperator(3, 4, (a, b) => a * b));
}
