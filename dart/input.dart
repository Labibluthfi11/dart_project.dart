import 'dart:io';

void main() {
  stdout.write('masukan nama anda ');
  String? name = stdin.readLineSync();
  print('Halo, $name!');
}
