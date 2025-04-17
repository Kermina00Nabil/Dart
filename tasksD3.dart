class Car {
  String brand;
  String model;
  int year;
  Car(this.brand, this.model, this.year);
  void displayInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
  }
}

class Animal {
  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  void makeSound() {
    print('Dog barks');
  }
}

class Cat extends Animal {
  void makeSound() {
    print('Cat meows');
  }
}

class BankAccount {
  double _balance = 0;
  double get balance => _balance;
  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      print('Cannot deposit a negative amount');
    }
  }
}
void main() {
  Car car1 = Car('Tesla', 'Model S', 2022);
  Car car2 = Car('Toyota', 'Corolla', 2020);
  car1.displayInfo();
  car2.displayInfo();

  Dog dog = Dog();
  Cat cat = Cat();
  dog.makeSound();
  cat.makeSound();

  BankAccount account = BankAccount();  
  account.deposit = 1000;
  print('Balance: ${account.balance}');
  account.deposit = -500; 
  print('Balance: ${account.balance}');
}
