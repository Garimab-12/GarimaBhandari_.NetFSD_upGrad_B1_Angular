class BankAccount {
  constructor(accountHolder, balance) {
    this.accountHolder = accountHolder;
    this.balance = balance;
  }
  deposit(amount) {
    this.balance += amount;
    console.log(`Deposited ${amount}. New balance: ${this.balance}`);
  }
  withdraw(amount) {
    if (amount > this.balance) {
      console.log("Insufficient balance");
    } else {
      this.balance -= amount;
      console.log(`Withdrew ${amount}. New balance: ${this.balance}`);
    }
  }
  checkBalance() {
    console.log(`Current balance: ${this.balance}`);
  }
}

let acc = new BankAccount("Rahul", 1000);
acc.deposit(500);
acc.withdraw(200);
acc.checkBalance();