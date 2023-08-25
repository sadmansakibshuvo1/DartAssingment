abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposited: $amount');
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      balance += balance * interestRate;
      print('Withdrawn: $amount');
    } else {
      print('Insufficient funds');
    }
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
      print('Withdrawn: $amount');
    } else {
      print('Insufficient funds');
    }
  }
}

void main() {
  // Creating a SavingsAccount instance
  SavingsAccount savings = SavingsAccount(101, 1000, 500);
  savings.deposit(2000);
  savings.withdraw(1000);

  // Creating a CurrentAccount instance
  CurrentAccount current = CurrentAccount(201, 1500, 1000);
  current.deposit(4000);
  current.withdraw(2000);
}
