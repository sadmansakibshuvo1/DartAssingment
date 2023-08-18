class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  Car(this.brand, this.model, this.year) : milesDriven = 0;

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }

  static int numberOfCars = 0;
}

void main() {
  Car.numberOfCars = 3; // Initialize the static property

  Car car1 = Car("Toyota", "Camry", 2020);
  car1.drive(10000);

  Car car2 = Car("Honda", "Civic", 2018);
  car2.drive(8000);

  Car car3 = Car("Ford", "F-150", 2015);
  car3.drive(15000);

  List<Car> cars = [car1, car2, car3];

  for (int i = 0; i < cars.length; i++) {
    print("Car ${i + 1}: ${cars[i].getBrand()} ${cars[i].getModel()} ${cars[i].getYear()} " + "\n"
        "Miles: ${cars[i].getMilesDriven().toStringAsFixed(0)} Age: ${cars[i].getAge()} \n");
  }

  print("Total number of cars created: ${Car.numberOfCars}");
}
