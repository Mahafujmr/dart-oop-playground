import 'teacher_class.dart';
class Student extends Teacher {
  int? roll;
  @override
  String name= 'Toma';


  @override
  void teaching() {
    print('Student learn Bangle');
    print('Student learn Math');
    super.teaching();
    super.name;
  }
}