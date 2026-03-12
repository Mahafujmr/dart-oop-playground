// polymorphism example
class Teacher {
  // super class
  void subject() {
    print('Total 4 Subject ');
  }
}

// parent class with => inheritance
class Student extends Teacher {
@override
  void subject() {
  print('Subject name is English');
}
// other method
void roll(int roll){
  print('Student roll is $roll');
}
}
// parent class and => Abstraction
class AllStudent implements Teacher,Student{
  @override
  void subject() {
    print('All subject add for Teacher');
  }

  @override
  void roll(int roll) {
    print('Student roll is = $roll');
  }

}

void main() {
  Student student = Student();
  student.subject();
  AllStudent allStudent = AllStudent();
  allStudent.subject();
  allStudent.roll(5);
}
