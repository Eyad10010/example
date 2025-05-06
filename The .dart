void main() {
  Map<String, List<int>> studentGrades = {
    "Student1": [99, 99, 99],
    "Student2": [78, 88, 77],
    "Student3": [31, 90, 67],
    "Student4": [15, 28, 23],
  };

  studentGrades.forEach((student, grades) {
    int sum = 0;
    for (int grade in grades) {
      sum += grade;
    }
    double average = sum / grades.length;
    print("$student's average grade is: $average");

    if (average >= 60) {
      print("$student passed!");
    } else {
      print("$student failed.");
    }

    String letterGrade;
    if (average >= 90) {
      letterGrade = "A";
    } else if (average >= 80) {
      letterGrade = "B";
    } else if (average >= 70) {
      letterGrade = "C";
    } else if (average >= 60) {
      letterGrade = "D";
    } else {
      letterGrade = "F";
    }
    print("$student's letter grade: $letterGrade");
    print("");
  });
}
