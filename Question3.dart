void main() {
  Student st1 = Student("Software Engineering", "Abdul Qadir", "Abdul Latif");
  Student st2 = Student("Computer science", "Owais", "Akbar");
  print(st1.fullName());
  print(st2.fullName());
}

class Person {
  String firstName;
  String lastName;
  Person(this.firstName, this.lastName);
  String fullName() {
    return firstName + " " + lastName;
  }
}

class Student extends Person {
  String major;
  Student(this.major, String firstName, String lastName) : super(firstName, lastName);
  String fullName() {
    return firstName + " " + lastName + " and the major is : " + major;
  }
}
