void main() {
  // Fungsi anonim untuk menghitung luas lingkaran
  var luasLingkaran = (double r) => 3.14159 * r * r;

  // Contoh penggunaan
  double jariJari = 7;
  print('Luas lingkaran dengan jari-jari $jariJari adalah ${luasLingkaran(jariJari).toStringAsFixed(2)}');
}
