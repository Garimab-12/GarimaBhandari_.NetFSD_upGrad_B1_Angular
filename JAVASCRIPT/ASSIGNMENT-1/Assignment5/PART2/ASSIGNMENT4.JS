class Vehicle {
  constructor(brand, speed) {
    this.brand = brand;
    this.speed = speed;
  }
  start() {
    console.log(`${this.brand} started at speed ${this.speed}`);
  }
}

class Car extends Vehicle {
  constructor(brand, speed, fuelType) {
    super(brand, speed);
    this.fuelType = fuelType;
  }
  showDetails() {
    console.log(`${this.brand}, ${this.speed}km/h, Fuel: ${this.fuelType}`);
  }
}

let car = new Car("Toyota", 120, "Petrol");
car.start();
car.showDetails();