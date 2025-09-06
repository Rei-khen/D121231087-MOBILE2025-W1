import 'dart:io';

//fungsi faktorialnya
int faktorial(int angka) {
  if (angka <= 1) {
    return 1;
  } else {
    return angka * faktorial(angka - 1);
  }
}

void main() {
  //user input
  stdout.write("masukkan angka(harus lebih besar dari 0) : ");
  String? userInput = stdin.readLineSync();

  if (userInput == null || userInput.isEmpty) {
    print("Input tidak boleh kosong!");
    return;
  }

  try {
    int angka = int.parse(userInput);
    if (angka < 0) {
      print("angka harus lebih besar dari 0");
    } else {
      var hasil = faktorial(angka);
      print(hasil);
    }
  } catch (err) {
    print("input tidak valid");
  }
}
