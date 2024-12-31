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
}

class Student extends Person {
  String studentID;
  String grade;
  List<double> courseScores;

  Student(super.name, super.age, super.address, this.studentID, this.grade,
      this.courseScores);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    double total = courseScores.reduce((a, b) => a + b);
    return total / courseScores.length;
  }

  void displayStudentDetails() {
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Student ID: $studentID");
    print("Grade: $grade");
    print("Average Score: ${calculateAverageScore().toStringAsFixed(1)}");
  }
}

void main() {
  List<double> scores = [90, 85, 82];
  Student student = Student("John Doe", 20, "123 Main St", "S123", "A", scores);
  student.displayStudentDetails();
}
