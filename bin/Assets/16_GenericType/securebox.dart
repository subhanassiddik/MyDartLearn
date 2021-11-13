//T hanya sebuah simbol bisa diganti dengan simbol yang lain,tidak harus huruf T

class SecureBox<T> {
  final T _data;
  final String _pin;

  SecureBox(this._data, this._pin);

  T getData(String pin) => (pin == _pin) ? _data : null;
}
