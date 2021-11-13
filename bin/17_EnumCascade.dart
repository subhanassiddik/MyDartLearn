//pengunaan enum
enum UcoaStatus { jalan, lari, terbang }

class MonsterUcoa {
  final UcoaStatus status;

  MonsterUcoa({this.status = UcoaStatus.jalan});

  void move() {
    switch (status) {
      case UcoaStatus.jalan:
        print('Ucoa sedang jalan');
        break;
      case UcoaStatus.lari:
        print('Ucoa sedang lari');
        break;
      case UcoaStatus.terbang:
        print('Ucoa sedang terbang');
        break;
      default:
        print('ucoa status bingung');
    }
  }

  void eat() => print('ucoa sedang makan');
}

void main(List<String> args) {
  //penulisan biasa
  // MonsterUcoa m = MonsterUcoa(status: UcoaStatus.terbang);
  // m.move();

  //contoh penulisan cascade
  MonsterUcoa u = MonsterUcoa(status: UcoaStatus.terbang)
    ..move()
    ..eat();

  //contoh penulisan cascade jika perlu print sesuatu diantaranya
  MonsterUcoa mu = MonsterUcoa(status: UcoaStatus.terbang);
  print('ada string diantaranya');
  mu
    ..move()
    ..eat();
}
