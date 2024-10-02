void main() {
  //Statically typed
  String firstname = 'Praktikum';
  var lastname = "PPB";

  // If-Else Statement
  var open = 8;
  var close = 17;
  var now = 10;

  if (now >= open && now < close) {
    print("Toko Buka");
  } else if (now == 13) {
    print("Toko sedang istirahat");
  } else {
    print("toko tutup");
  }

//conditional ? true : false
  var toko = now >= open ? "toko buka" : "toko sedang istirahat";
  print('toko');

//switch case
  var nilai = 'b';

  switch (nilai) {
    case 'a':
      print('Nilai Sangat Bagus');
      break;
    case 'b':
      print("Nilai Bagus");
      break;
    case 'c':
      print('Nilai cukup');
      break;
    default:
      print('Nilai Tidak tersedia');
  }

//For Loop
//void main() {
  for (int i = 0; i <= 10; i++) {
    print(i);
  }

//While Loop
//void main() {
  int i = 1;
  while (i <= 5) {
    print('Angka: $i');
    i++;
  }

  //fixed list
  List<int> fixedList = List.filled(3, 0);

  fixedList[0] = 10;
  fixedList[1] = 20;
  fixedList[2] = 30;

  print('Fixed Length List: $fixedList');

  fixedList.add(30);
  fixedList.removeAt(0);

  //growable list
  List<int> growableList = [];

  growableList.add(10);
  growableList.add(20);
  growableList.add(30);

  print(growableList);

  growableList.add(50);
  growableList.add(70);
  growableList.add(90);

  print(growableList);

  growableList.remove(20);
  print(growableList);

//fungsi
  void cetakPesan(String pesan) {
    print(pesan);
  }

  int perkalian(int a, int b) {
    return a * b;
  }

//parameter
//void main() {
  int hasil = perkalian(5, 4);
  print('Hasil perkalian fungsi: $hasil');

  cetakPesan('Halo,Dhiya');
}
