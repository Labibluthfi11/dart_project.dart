class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("Hi, my name is $name and I am $age years old.");
  }
}

void main() {
  Person person = Person("John Doe", 25);
  person.introduce();
}
