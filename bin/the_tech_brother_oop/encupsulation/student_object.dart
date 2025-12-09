// create object
import 'student_class.dart';
void main() {
  Student student = Student();
  print(student.newName ); // value is null
  print(student.newAge );// value is null

  // use setter and update nullable value and set value
  print('New name add = ${student.newValue = 'Rahim'}');
  student.newAgeAdd=50;

}