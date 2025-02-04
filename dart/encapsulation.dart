class Person {
  // Atribut private (diawali dengan underscore)
  String _name;
  int _age;

  // Constructor
  Person(this._name, this._age);

  // Getter untuk mengakses _name
  String get name => _name;

  // Setter untuk mengubah _name
  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    }
  }

  // Getter untuk mengakses _age
  int get age => _age;

  // Setter untuk mengubah _age dengan validasi
  set age(int newAge) {
    if (newAge > 0) {
      _age = newAge;
    }
  }

  // Metode public untuk menampilkan informasi
  void displayInfo() {
    print("Name: $_name, Age: $_age");
  }
}

void main() {
  // Membuat objek Person
  var person = Person("John", 25);

  // Mengakses data melalui getter
  print("Name: ${person.name}"); // Output: Name: John
  print("Age: ${person.age}");   // Output: Age: 25

  // Mengubah data melalui setter
  person.name = "Jane";
  person.age = 30;

  // Menampilkan informasi
  person.displayInfo(); // Output: Name: Jane, Age: 30

  // Mencoba mengubah usia dengan nilai tidak valid
  person.age = -5; // Tidak akan mengubah usia karena validasi
  person.displayInfo(); // Output: Name: Jane, Age: 30
}