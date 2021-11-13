//keyword final
//1. menunjuk ke identifair yg sama seterusnya
//2. nilainya tidak bisa diubah
//3. variabel yg mempunyai keyword final harus diinisialisasi atau bisa juga menggunakan constructor
//4. bisa dideklarasikan dimana saja

//keyword const
//1. tidak bisa dideklarasikan dimana saja
//2. ada dua jenis
//    1.literal constant => double x = 2.5
//    2.Symbolic constant => const x = 2.5;
//3. nilainya menunjuk ke identifair yg sama seterusnya
//4. hanya bisa dideklarasikan ditop level atai di lokal variabel

void main(List<String> args) {
  var a = const constClass(number: 7);
  var b = const constClass(number: 7);
  print(identical(a, b));
}

class regulerClass {
  final int number;

  regulerClass({this.number});
}

class constClass {
  final int number;

  const constClass({this.number});
}
