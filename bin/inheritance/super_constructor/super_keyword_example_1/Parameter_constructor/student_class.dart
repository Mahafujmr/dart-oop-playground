class Teacher {
  String ? name;

  // constructor
  Teacher (this.name) {
    print('Teacher name is ');
    print('MY Student name is $name');
  }
}

// inheritance
class Student extends Teacher {
  int ? age;

// constructor
  // use super keyword // super -use name
Student (String name, this.age) : super (name) {
  print('Student name is Tuhin');
  print('Student name is $name');
  print('Student age is $age');
}

}