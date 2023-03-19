void main() {
  Car car1 = Car("corolla", "toyota", 2023, 4);
  Car car2 = Car("Suzuki", "Mehran", 14, 4);
  car1.drive();
  car2.drive();
}

class Vehicle {
  String brand;
  String model;
  int year;
  Vehicle(this.brand, this.model, this.year);
  void drive() {
    print("a car of brand : $brand , model : $model is driving");
  }
}

class Car extends Vehicle {
  int numDoors;
  Car(String model, String brand, int year, this.numDoors)
      : super(model, brand, year);
  void drive() {
    print("a car of brand : $brand , model : $model is driving");
    print("number of doors of class is: $numDoors");
  }
}
