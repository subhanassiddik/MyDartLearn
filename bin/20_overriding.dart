//operator bisa digunakan dalam studi kasus :
//misalnya ada pangkat manajer,bos,karyawan digunakan untuk membandingkan.
//apakah manajer lebih tinggi pangkatnya dari bos atau yang lainnya.

void main(List<String> args) {
  Hero a = Hero(10);
  Hero b = Hero(10);

  print(a == b);
  print((a + b).power);
  print((a + 12).power);
  print(a > b);
}

class Hero {
  final int power;

  Hero(this.power);

  // Hero operator +(Hero other) {
  //   return Hero(power + other.power);
  // }

  Hero operator +(var other) {
    if (other is Hero) {
      return Hero(power + other.power);
    } else if (other is int) {
      return Hero(power + other);
    } else {
      return this;
    }
  }

  @override
  bool operator ==(var other) {
    if (other is Hero) {
      if (other.power == power) {
        return true;
      }
    }
    return false;
  }

  bool operator >(var other) {
    if (other is Hero) {
      if (power > other.power) {
        return true;
      }
    }
    return false;
  }
}
