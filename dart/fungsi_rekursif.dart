
void main() {
  // Contoh 1: Menghitung Faktorial menggunakan rekursi
  int number = 5;
  int hasilFaktorial = factorial(number);
  print("Faktorial dari $number adalah $hasilFaktorial");

  // Contoh 2: Menghitung Bilangan Fibonacci menggunakan rekursi
  int posisi = 10;
  int hasilFibonacci = fibonacci(posisi);
  print("Bilangan Fibonacci pada posisi ke-$posisi adalah $hasilFibonacci");
}

/// Fungsi rekursif untuk menghitung faktorial dari sebuah angka.
/// Definisi faktorial:
///   n! = n * (n-1)!, dengan basis 0! = 1 dan 1! = 1.
int factorial(int n) {
  if (n <= 1) {
    // Basis rekursif: 0! dan 1! bernilai 1.
    return 1;
  }
  // Panggilan rekursif: n * factorial(n-1)
  return n * factorial(n - 1);
}

/// Fungsi rekursif untuk menghitung bilangan Fibonacci pada posisi ke-n.
/// Definisi deret Fibonacci:
///   F(0) = 0, F(1) = 1, dan untuk n > 1: F(n) = F(n-1) + F(n-2)
int fibonacci(int n) {
  if (n <= 0) {
    // Basis rekursif: F(0) = 0.
    return 0;
  } else if (n == 1) {
    // Basis rekursif: F(1) = 1.
    return 1;
  }
  // Panggilan rekursif: penjumlahan dua nilai sebelumnya
  return fibonacci(n - 1) + fibonacci(n - 2);
}
