// File: kuadrat.dart

void main() {
  // Contoh 1: Menghitung kuadrat dari sebuah bilangan
  int angka = 7;
  int hasil = kuadrat(angka);
  print("Kuadrat dari $angka adalah $hasil");

  // Contoh 2: Menghitung kuadrat dari setiap elemen dalam sebuah list
  List<int> deretAngka = [1, 2, 3, 4, 5];
  // Menggunakan fungsi map untuk menerapkan fungsi kuadrat ke setiap elemen list
  List<int> hasilKuadrat = deretAngka.map(kuadrat).toList();
  print("Deret angka asli: $deretAngka");
  print("Deret kuadrat: $hasilKuadrat");
}

/// Fungsi untuk menghitung kuadrat dari suatu bilangan.
/// Misalnya, kuadrat(3) akan menghasilkan 9.
int kuadrat(int x) {
  return x * x;
}
