// dart class - constructor
// student list use three constructor
class Student{
  String? name;
  int? age;
  int? rollNumber;
  // three properties => name, age, rollNumber
Student (String name, int age, int rollNumber) {
  print('Call This Class');
  print('Student name is = $name');
  print('Student age is = $age');
  print('Student Roll Number is = $rollNumber');
}
}
// class object creation
void main() {
  Student student = Student('Tuhin', 22, 05);
  print(student);
}