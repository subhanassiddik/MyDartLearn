class Character {
  int _healtPoint;

  set healtPoint(int value) {
    if (value < 0) {
      value = 5;
    }
    _healtPoint = value;
  }

  int get healtPoint => _healtPoint;
}
