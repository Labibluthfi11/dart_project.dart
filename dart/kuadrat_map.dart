import 'dart:io';

void main() {
  print('=== Program Menghitung Kuadrat Angka dalam List ===');

  List<int> daftarAngka = []; 

  while (true) {
    print('Masukkan angka (pisahkan dengan spasi, contoh: 1 2 3 4 5):');

    String? input = stdin.readLineSync(); 
    List<String> angkaStr = input?.split(' ') ?? []; 
    List<int> angkaSementara = [];

    bool inputValid = true;

    for (String angka in angkaStr) {
      int? nilai = int.tryParse(angka); 
      if (nilai != null) {
        angkaSementara.add(nilai);
      } else {
        inputValid = false;
        break;
      }
    }

    if (inputValid && angkaSementara.isNotEmpty) {
      print('Anda memasukkan angka: ${angkaSementara.join(', ')}. Apakah sudah benar? (yes/no)');
      String? konfirmasi = stdin.readLineSync()?.toLowerCase();

      if (konfirmasi == 'yes') {
        daftarAngka = angkaSementara; 
        break;
      } else if (konfirmasi == 'no') {
        print('Silakan masukkan angka yang benar.');
      } else {
        print('Jawaban tidak valid, silakan ketik "yes" atau "no".');
      }
    } else {
      print('Input tidak valid, silakan masukkan angka yang benar.');
    }
  }

  // Menggunakan map() untuk menghitung kuadrat setiap angka dalam daftar
  List<int> hasilKuadrat = daftarAngka.map((angka) => angka * angka).toList();

  print('Daftar angka asli: $daftarAngka');
  print('Hasil kuadrat: $hasilKuadrat');
}