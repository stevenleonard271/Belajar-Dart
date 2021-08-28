//Fungsi adalah sekumpulan statement yang independen memiliki nama, dan bertugas untuk melakukan tugas tertentu
//Fungsi dapat mengembalikan nilai pada pemanggilnya, jika tidak maka tipenya void

import 'dart:io';

double luasSegiEmpat(double p, double l) {
  return p * l;
}

void ayoVaksin() {
  print('Ayo Vaksin!!!');
}

main(List<String> args) {
  double p, l;

  p = double.tryParse(stdin.readLineSync());
  l = double.tryParse(stdin.readLineSync());
  print(luasSegiEmpat(p, l));

  ayoVaksin();
}
