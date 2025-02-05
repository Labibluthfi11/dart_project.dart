class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  // Getter
  String get name => _name;
  int get age => _age;

  // Setter
  set name(String newName) {
    _name = newName;
  }

  set age(int newAge) {
    if (newAge > 0) {
      _age = newAge;
    } else {
      print("Age must be positive.");
    }
  }

  void introduce() {
    print("Hi, my name is $_name and I am $_age years old.");
  }
}

void main() {
  Person person = Person("John Doe", 25);
  person.introduce();
  
  // Menggunakan setter
  person.name = "Jane Doe";
  person.age = 30;

  // Menggunakan getter
  print("Updated Name: \${person.name}");
  print("Updated Age: \${person.age}");
}
