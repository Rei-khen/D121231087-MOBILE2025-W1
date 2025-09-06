import 'dart:io';

//fungsi faktorialnya
int fibonacci(int angka) {
  if (angka == 0) return 0;
  if (angka == 1) return 1;
  return fibonacci(angka - 1) + fibonacci(angka - 2);
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
      print("fibocannci ke ${angka} adalah ${fibonacci(angka)}");
    }
  } catch (err) {
    print("input tidak valid");
  }
}
