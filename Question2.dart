void main() {
  CheckAccount Acc1=new CheckAccount("5021033", 20000);
  Acc1.withDraw(100);
  print("your remaining transaction limit is : ${Acc1.transactionLimit}");
}

class BankAccount {
  double balance;
  String accountNumber;
  BankAccount(this.accountNumber, this.balance);
  void withDraw(double amount) {
    if (balance > amount) {
      balance = balance - amount;
      print(
          "You have Withdraw amount of $amount, now your remaining balance is : $balance");
    } else {
      print("you have insufficient balance to withdraw amount!");
    }
  }

  void deposit(double amount) {
    balance = balance + amount;
    print("Your amount : $amount is successfully deposited !");
  }
}

class CheckAccount extends BankAccount {
  double transactionLimit = 50000;
  CheckAccount(String accountNumber, double balance):super(accountNumber, balance);
  void withDraw(double amount) {
    if (transactionLimit > amount) {
      if (balance > amount) {
        transactionLimit=transactionLimit-amount;
        balance = balance - amount;
        print("You have Withdraw amount of $amount, now your remaining balance is : $balance");
      } else {
        print("you have insufficient balance to withdraw amount!");
      }
    } else {
      print(
          "your transaction limit is : $transactionLimit and your amount to withdraw is : $amount, so transaction is impossible");
    }
  }
}
