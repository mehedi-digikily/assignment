
void main() {
  Person person = Person("John Doe", 30, "123 Main St");
  person.displayDetails();
}


abstract class Role {
  void displayRole();
}

class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  @override
  void displayRole() {
    print("Role: Person");
  }

  void displayDetails() {
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

