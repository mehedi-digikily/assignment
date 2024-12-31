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

class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCoursesTaught() {
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }

  void displayTeacherDetails() {
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Teacher ID: $teacherID");
    displayCoursesTaught();
  }
}

void main() {
  // Create a Teacher instance
  List<String> courses = ["Math", "English", "Bangla"];
  Teacher teacher = Teacher("Mrs. Smith", 35, "456 Oak St", "T456", courses);

  teacher.displayTeacherDetails();
}
