void main(List<String> args) {
  print('For example :');

  int i = 0;

  for (int i = 0; i < 5; i++) {
    print('nomor ' + i.toString());
  }

  print("-----------------------------");
  print("while example :");

  int j = 0;

  while (j < 5) {
    print('Halo ke ' + j.toString());
    j++;
  }

  print("-----------------------------");
  print("do while example :");

  int x = 0;

  do {
    print('Halo ke ' + x.toString());
    x++;
  } while (x < 5);
}
