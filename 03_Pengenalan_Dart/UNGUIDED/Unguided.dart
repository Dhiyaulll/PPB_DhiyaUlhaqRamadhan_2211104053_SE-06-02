//soal Looping

import 'dart:io';

void main() {
  stdout.write('Masukkan panjang piramida: ');
  int panjang = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= panjang; i++) {
    // Spasi
    for (int j = 1; j <= panjang - i; j++) {
      stdout.write(' ');
    }
    // Bintang
    for (int k = 1; k <= 2 * i - 1; k++) {
      stdout.write('*');
    }
    stdout.writeln();
  }
}

//Soal Function

import 'dart:io';

bool isPrime(int n) {
  if (n <= 1) return false; 
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false; 
  }
  return true; 
}

void main() {
  stdout.write('Masukkan bilangan bulat: '); 
  int? number =
      int.tryParse(stdin.readLineSync()!); 

  if (number != null) {
    if (isPrime(number)) {
      print('bilangan prima'); 
    } else {
      print('bukan bilangan prima'); 
    }
  } else {
    print('Input tidak valid'); 
  }
}


//Soal Branch Percabangan

import 'dart:io';
String nilaiGrade(int nilai) {
  if (nilai > 70) {
    return "Nilai A";
  } else if (nilai > 40 && nilai <= 70) {
    return "Nilai B";
  } else if (nilai > 0 && nilai <= 40) {
    return "Nilai C";
  } else {
    return "";
  }
}

void main() {
  print("Masukkan nilai: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    int nilai = int.tryParse(input) ?? 0;
    print("$nilai merupakan ${nilaiGrade(nilai)}");
  } else {
    print("Input tidak valid");
  }
}
