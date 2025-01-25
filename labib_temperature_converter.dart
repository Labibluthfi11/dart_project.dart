import 'dart:io';

double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

double celsiusToKelvin(double celsius) {
  return celsius + 273.15;
}

double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

double fahrenheitToKelvin(double fahrenheit) {
  return (fahrenheitToCelsius(fahrenheit)) + 273.15;
}

double kelvinToCelsius(double kelvin) {
  return kelvin - 273.15;
}

double kelvinToFahrenheit(double kelvin) {
  return (kelvinToCelsius(kelvin) * 9 / 5) + 32;
}

void main() {
  print("\u001b[36m=== Temperature Converter ===\u001b[0m"); // Judul dengan warna cyan
  print("\u001b[33mMasukkan suhu yang Anda inginkan:\u001b[0m");
  double? value = double.tryParse(stdin.readLineSync()!);

  if (value == null) {
    print("\u001b[31mMasukkan suhu dengan benar.\u001b[0m"); // Pesan error dengan warna merah
    return;
  }

  print("\u001b[33mPilih salah satu temperatur yang Anda inginkan:\u001b[0m");
  print("\u001b[34m1. Celsius\n2. Fahrenheit\n3. Kelvin\u001b[0m"); // Pilihan berwarna biru
  int? unit = int.tryParse(stdin.readLineSync()!);

  if (unit == null || unit < 1 || unit > 3) {
    print("\u001b[31mJangan salah pilihan dongss.\u001b[0m"); // Pesan error dengan warna merah
    return;
  }

  print("\u001b[32m\nHasil konversi:\u001b[0m"); // Header hasil dengan warna hijau
  switch (unit) {
    case 1: // Celsius
      print("\u001b[35mCelsius to Fahrenheit: ${celsiusToFahrenheit(value)} °F\u001b[0m"); // Warna magenta
      print("\u001b[35mCelsius to Kelvin: ${celsiusToKelvin(value)} K\u001b[0m");
      break;
    case 2: // Fahrenheit
      print("\u001b[35mFahrenheit to Celsius: ${fahrenheitToCelsius(value)} °C\u001b[0m");
      print("\u001b[35mFahrenheit to Kelvin: ${fahrenheitToKelvin(value)} K\u001b[0m");
      break;
    case 3: // Kelvin
      print("\u001b[35mKelvin to Celsius: ${kelvinToCelsius(value)} °C\u001b[0m");
      print("\u001b[35mKelvin to Fahrenheit: ${kelvinToFahrenheit(value)} °F\u001b[0m");
      break;
    default:
      print("\u001b[31mPilihan tidak valid.\u001b[0m"); // Error tambahan untuk keamanan
  }
}
