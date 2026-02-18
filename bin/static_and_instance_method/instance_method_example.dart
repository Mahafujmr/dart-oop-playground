// dart instance method example
class Student {
 late String name ;

 // instance method
 void writing () {
   print('Every Student Writing Book');
 }
}

// create object
void main() {
  Student student =Student();
  student.writing();
  print('Student name is = ${student.name = 'Tuhin'}');
}