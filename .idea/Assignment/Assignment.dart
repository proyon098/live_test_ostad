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
    print("Role: Not Determined.");
  }

  void display_info() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

class Student extends Person {
  String studentID;
  String grade;
  List<int> courseScores;

  Student(this.studentID, this.grade, this.courseScores, String name, int age,
      String address)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double averageScore() {
    var total = 0;
    for (var score in courseScores) {
      total += score;
    }
    return total / courseScores.length;
  }

  void student_details() {
    displayRole();
    display_info();
    print("Average Score: ${averageScore().toStringAsFixed(1)}");
  }
}

class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(
      this.teacherID, this.coursesTaught, String name, int age, String address)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void teacher_details() {
    displayRole();
    display_info();
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
}

void main() {
  var student = Student(
    "S12345",
    "A",
    [90, 85, 82], //sample input should be 90,85,92 to get average 89.0
    "John Doe",
    20,
    "123 Main Street",
  );
  var teacher = Teacher(
    "T67890",
    ["Math", "English", "Bangla"],
    "Mrs. Smith",
    35,
    "456 Oak St",
  );
  print("Student Information:");
  student.student_details();
  print("");
  print("Teacher Information:");
  teacher.teacher_details();
}
