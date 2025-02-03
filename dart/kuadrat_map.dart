// File: kuadrat_map.dart

void main() {
  // 1. Mendefinisikan sebuah list berisi angka-angka
  List<int> angka = [1, 2, 3, 4, 5];

  // 2. Menggunakan fungsi map untuk menghitung kuadrat dari setiap angka
  // Fungsi map menerapkan ekspresi (n) => n * n pada setiap elemen list
  // Hasil dari map adalah Iterable, sehingga perlu dikonversi menjadi List dengan toList()
  List<int> kuadrat = angka.map((n) => n * n).toList();

  // 3. Menampilkan hasil ke konsol
  print("Angka asli: $angka");
  print("Kuadrat: $kuadrat");
}
