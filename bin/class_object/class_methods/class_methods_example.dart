// dart class methods
/*
methods=> code clean and properties work methods
 */
class Teacher {
  String name;
  String address;
  int? age;
  String subject;
  // creation constructor
Teacher (this.name, this.address, this.subject,[this.age]);

// ✅ creation methods ✅
void display() {
  print('Teacher name is = $name');
  print('Teacher address is = $address');
  print('Teacher age is = ${age ?? 'Not Valid'}');
  print('Teacher subject is = $subject');
}
}
// creation object
void main() {
 Teacher teacherOne = Teacher('Tamim', 'Dhaka', 'Math');
 teacherOne.display();
 print('✅==========================================✅');
 Teacher teacherTwo = Teacher('Tushar', 'Mirpur', 'English',22);
 teacherTwo.display();

}