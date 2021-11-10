//field  => apa yang dimiliki oleh classnya
//method  => apa yang bisa dilakukan oleh classnya

//mana yang benar :
//1 . persegi panjang menghitung luas atau
//2 . persegi panjang memiliki luas?

class PersegiPanjang {
  double _panjang;
  double _lebar;

  void set panjang(double value) {
    if (value < 0) {
      value *= -1;
    }
    _panjang = value;
  }

  void set lebar(double value) {
    if (value < 0) {
      value *= -1;
    }
    _lebar = value;
  }

  double get panjang {
    return _panjang;
  }

  double get lebar {
    return _lebar;
  }

  double get luas => _panjang * _lebar;
}
