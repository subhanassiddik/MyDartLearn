void main(List<String> args) {
  //list adalah kumpulan data
  List<int> myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> list = [1, 2, 3];
  List<int> sort = [3, 4, 1, 2, 7, 8, 6, 5];
  List<int> sett = [1, 1, 3, 3, 4, 4];
  List<String> mapp = [];

  //mengakses list
  // list[0] = 10;
  // int e = list[0];
  // print(e);

  //fungsi dasar yang sering digunakan di list

  // myList.add(10);
  // myList.addAll(list);
  // myList.insert(0, 5);
  // myList.insertAll(2, [15, 20]);

  // myList.remove(3);
  // myList.removeAt(0);
  // myList.removeLast();
  // myList.removeRange(3, 6);
  // myList.removeWhere((element) => element % 2 != 0);

  // if (myList.contains(6)) {
  //   print("betul");
  // }
  // list = myList.sublist(3, 6);
  // list.clear();

  // sort.sort((a, b) => b - a);

  // sort.removeWhere((element) => element % 2 == 0);
  // if (sort.every((element) => element % 2 != 0)) {
  //   print('semua ganjil');
  // } else {
  //   print('tidak semua ganjil');
  // }

  // sort.isEmpty ? print("terisi");
  // sort.isNotEmpty ? print("tidak kosong");

  //set kumpulan data yang unik elemnenya tidak bisa sama
  // Set<int> s = sett.toSet();

  //Map
  // mapp = myList.map((e) => "angka " + e.toString()).toList();

  //melakukan perulangan (iterasi) terhadap list
  //cara 1
  // for (int index = 0; index < list.length; index++) {
  //   print(list[index]);
  // }
  //cara 2
  // for (int bilangan in list) {
  //   print(bilangan);
  // }
  //cara 3
  mapp.forEach((bilangan) {
    print(bilangan);
  });
}
