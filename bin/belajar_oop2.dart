import 'dart:io';

import 'package:belajar_oop2/belajar_oop2.dart' as belajar_oop2;

void main(List<String> arguments) {
  Segitiga segitigasatu;
  double luasstg, alasstg, tinggistg;
  String repeat;

// Segitiga

  Menu();

  int angkapilihan;

  print('Masukkan angka pilihan anda');
  angkapilihan = int.tryParse(stdin.readLineSync());

  // print('Masukkan angka pilihan anda');
  // angkapilihan = int.tryParse(stdin.readLineSync());

  if (angkapilihan == 1) {
    segitigasatu = Segitiga();

    print('Masukkan alas segitiga');
    segitigasatu.alas = double.tryParse(stdin.readLineSync());
    alasstg = segitigasatu.alas;
    print('Masukkan tinggi segitiga');
    segitigasatu.tinggi = double.tryParse(stdin.readLineSync());
    tinggistg = segitigasatu.tinggi;

    luasstg = segitigasatu.luas(alasstg, tinggistg);
    luasstg.toInt().toString();
    print('Luas segitiga adalah ' + luasstg.toString() + ' cm');
  } else if (angkapilihan == 2) {
    Persegipanjang persegipanjangsatu;
    double luaspp, panjangpp, lebarpp;

    persegipanjangsatu = Persegipanjang();
    print('Masukkan panjang persegi panjang');
    persegipanjangsatu.panjang = double.tryParse(stdin.readLineSync());
    panjangpp = persegipanjangsatu.panjang;
    print('Masukkan lebar persegi panjang');
    persegipanjangsatu.lebar = double.tryParse(stdin.readLineSync());
    lebarpp = persegipanjangsatu.lebar;

    luaspp = persegipanjangsatu.luas(panjangpp, lebarpp);
    luaspp.toInt().toString();

    print('Luas persegi panjang adalah ' + luaspp.toString() + ' cm');
  } else {
    print('Nomor yang anda masukkan salah');
  }
}

class Segitiga {
  double alas, tinggi;
  double luas(alas, tinggi) => 0.5 * this.alas * this.tinggi;
}

class Persegipanjang {
  double panjang, lebar;
  double luas(panjang, lebar) => this.panjang * lebar;
}

void Menu() {
  print('============================');
  print('|1. Luas Segitiga          |');
  print('|2. Luas Persegi Panjang   |');
  print('============================');
}
