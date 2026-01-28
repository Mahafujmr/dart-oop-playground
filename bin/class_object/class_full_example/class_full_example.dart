// dart class full example
/*
this example use =>
 => creation class
 => property or (attributes)
 => creation class constructor
 => creation class methods (function)
 => creation object
 */
class UserForm {
  // creation property
  String name;
  int age;
  String password;
  String? userName;
  static String nationality = 'Bangladeshi';

  // creation class constructor
  UserForm(this.name, this.age, this.password, [this.userName]);

  // creation methods
 void showOutput () {
   print('User name is = $name');
   print('User other name is = ${userName ?? 'Not Important'}');
   print('User age is = $age');
   print('User password is = $password');

 }

}
// creation object
void main() {
  UserForm userOne = UserForm('Tuhin', 22, '+tuhin120A');
  print('User Nationality is = ${UserForm.nationality}');
  userOne.showOutput();
  // creation other object
  print('✅====================================✅');
  UserForm userTwo = UserForm('Taskin', 23, 'TT123*&mm','@taskin' );
  userTwo.showOutput();
}