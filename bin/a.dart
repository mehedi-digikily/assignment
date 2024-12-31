void main() {
  Role student = Student("John Doe");
  Role teacher = Teacher("Mrs. Smith");

  student.displayRole();
  teacher.displayRole();
}

abstract class Role {
  void displayRole(); // Abstract method to be implemented by subclasses
}

 class Student implements Role {
  String name;

  Student(this.name);

  @override
  void displayRole() {
    print("$name is a Student.");
  }
}

class Teacher implements Role {  String name;

  Teacher(this.name);

  @override
  void displayRole() {
    print("$name is a Teacher.");
  }
}