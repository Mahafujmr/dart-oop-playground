// polymorphism example
class Teacher {
  // super class
  void subject() {
    print('Total 4 Subject ');
  }
}

class Student extends Teacher {
@override
  void subject() {
  print('Subject name is English');
}
}
class AllStudent implements Teacher{
  @override
  void subject() {
    // TODO: implement subject
  }

}

void main() {
  Student student = Student();
  student.subject();
}
