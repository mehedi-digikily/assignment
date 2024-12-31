abstract class Role {
  void displayRole();
}

class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    print("Role: Person");
  }
}

class Student extends Person {
  String studentID;
  String grade;
  List<double> courseScores;

  Student(
      String name, int age, String address, this.studentID, this.grade, this.courseScores)
      : super(name, age, address);

  // Override the displayRole method
  @override
  void displayRole() {
    print("Role: Student");
  }

  // Method to calculate the average score of courses
  double calculateAverageScore() {
    double total = courseScores.reduce((a, b) => a + b);
    return total / courseScores.length;
  }

  // Display student details
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

// Create the Teacher class
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  // Constructor to initialize attributes
  Teacher(String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address);

  // Override the displayRole method
  @override
  void displayRole() {
    print("Role: Teacher");
  }

  // Display the courses taught by the teacher
  void displayCoursesTaught() {
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }

  // Display teacher details
  void displayTeacherDetails() {
    displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Teacher ID: $teacherID");
    displayCoursesTaught();
  }
}

// Create the StudentManagementSystem class
class StudentManagementSystem {
  // Main method to manage students and teachers
  void run() {
    // Create a Student instance
    List<double> studentScores = [90, 85, 82];
    Student student = Student("John Doe", 20, "123 Main St", "S123", "A", studentScores);

    // Create a Teacher instance
    List<String> teacherCourses = ["Math", "English", "Bangla"];
    Teacher teacher = Teacher("Mrs. Smith", 35, "456 Oak St", "T456", teacherCourses);

    // Display details
    print("Student Information:");
    student.displayStudentDetails();

    print("\nTeacher Information:");
    teacher.displayTeacherDetails();
  }
}

void main() {
  // Create an instance of StudentManagementSystem and run it
  StudentManagementSystem sms = StudentManagementSystem();
  sms.run();
}