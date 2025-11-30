// class static keyword
// => ✅ Global variable use static Keyword

/*
 // ✅✅✅✅✅✅✅✅✅✅✅✅
 => Global variable use Class name
 => Static keyword access class name
 */
class Student{
  late String name;
  static int age =22;
  // => static variable => int age;

// creation static methods
static void display() {
  int number= 10;
  print('Student number is = $number');

}
// ✅ static methods => access Class name -> Student.display();

}
void main() {
  Student student = Student();
  student.name = 'Tuhin';
  print('student name is = ${student.name}');
  // access  static properties in class =>  class name.static variable
  // static variable => Student.age;
  print('Student age = ${Student.age}');

  // static variable and static methods access => static methods
  Student.display();
}