// dart instance method example
class Student {
 late String name ;
 String? read;
 int? age;


 // instance method
 void writing (String read, int age) {
   this.read =read;
   this.age= age;
   print('Student Read $read');
   print('Student age $age');
   print('Every Student Writing Book');
 }
}

// create object
void main() {
  Student student =Student();
  student.writing('Ten',22);
  print('Student name is = ${student.name = 'Tuhin'}');
}