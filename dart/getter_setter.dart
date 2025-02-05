class Car {
  double _speed;

  Car([this._speed = 0]);

  double get speed => _speed;

  set speed(double value) {
    if (value < 0) {
      print("Speed tidak bisa negatif. Mengatur ke 0.");
      _speed = 0;
    } else {
      _speed = value;
    }
  }
}

// Contoh penggunaan
void main() {
  Car car = Car();
  print("Kecepatan awal: ${car.speed}");

  car.speed = 80; // Mengatur kecepatan
  print("Kecepatan setelah diatur: ${car.speed}");

  car.speed = -20; // Mencoba mengatur kecepatan negatif
  print("Kecepatan setelah mencoba nilai negatif: ${car.speed}");
}
