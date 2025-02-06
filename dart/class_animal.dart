class Animal {
  void speak() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print("Woof! Woof!");
  }
}

void main() {
  Animal animal = Animal();
  Dog dog = Dog();

  animal.speak(); // Output: Animal makes a sound
  dog.speak();    // Output: Woof! Woof!
}
