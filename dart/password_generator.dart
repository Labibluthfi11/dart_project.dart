import 'dart:io'; 
import 'dart:math'; 

void main() {
  print('=== Random Password Generator ===');

  print('lu kalo mau bikin pw cepetan masukin : ');

  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print('jangan kosong dong ganteng .');
    return;
  }

  int length = input.trim().length;


  const String chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#\$%^&*()-_=+[]{}|;:,.<>?/';

  Random random = Random();

  String password = '';
  for (int i = 0; i < length; i++) {
    password += chars[random.nextInt(chars.length)];  
  }


  print('nih pw acak lu: $password');
}
