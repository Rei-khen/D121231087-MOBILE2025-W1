import 'dart:io';

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
      print("input tidak boleh lebih kecil dari 0");
    } else {
      String biner = angka.toRadixString(2);
      print(biner);
    }
  } catch (err) {
    print("input tidak valid");
  }
}
