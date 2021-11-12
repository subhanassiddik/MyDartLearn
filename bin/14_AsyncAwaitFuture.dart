//method yg diberi keyword async akan di eksekusi,tanpa mempedulikan perintah yang lain.
//keyword future akan membuat sebuah method tidak lansung dieksekusi,tp kita dapat mementukan kapan method tsb akan dieksekusi
//keyword future tidak lansung me-return data

// void main(List<String> args) async {
void main(List<String> args) {
  Person p = Person();

  print('job 1');
  print('job 2');

  // p.getData();
  // await p.getDataAsync();
  // print('job 3 : ' + p.name);

  p.getDataAsync().then((_) => print('job 3 : ' + p.name));
  print('job 4');
}

class Person {
  String name = 'default name';

  void getData() {
    name = 'joko';
    print('get data[done]');
  }

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));
    name = 'yura';
    print('get data[done]');
  }
}
