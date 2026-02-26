class Employee {
  constructor(name, salary) {
    this.name = name;
    this.salary = salary;
  }
  getDetails() {
    return `${this.name} earns ${this.salary}`;
  }
}

class Manager extends Employee {
  constructor(name, salary, bonus) {
    super(name, salary);
    this.bonus = bonus;
  }
  getTotalSalary() {
    return this.salary + this.bonus;
  }
}

class Director extends Manager {
  constructor(name, salary, bonus, stockOptions) {
    super(name, salary, bonus);
    this.stockOptions = stockOptions;
  }
  getFullCompensation() {
    return this.salary + this.bonus + this.stockOptions;
  }
}

let d = new Director("Raj", 100000, 20000, 50000);
console.log(d.getDetails());
console.log(d.getTotalSalary());
console.log(d.getFullCompensation());