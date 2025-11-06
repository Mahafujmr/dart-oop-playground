// dart class example
// this is simple class
void main() {
  // class call
  // class instance creation = and object = studentInfo
  StudentInfo studentInfo = StudentInfo();
  // show result = call instance
  print(studentInfo.name);
  print(studentInfo.address);
  print(studentInfo.age);
}

// creation class
class StudentInfo {
  // properties or attributes
  String name = 'Tuhin';
  String address = 'Kushtia';
  int age = 22;
}